# Copyright 2016, Andreas Harry Kelch
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by 
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version. 
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# This file incorporates code covered by the following terms:
#  
#  Copyright 2016 The TensorFlow Authors. All Rights Reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ==============================================================================
"""Generic prediction script. Extracts DeCAF or classifies given dataset"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import math, os,json
import tensorflow as tf
import numpy as np

from datasets import dataset_factory
from nets import nets_factory
from preprocessing import preprocessing_factory


slim = tf.contrib.slim
os.environ["CUDA_VISIBLE_DEVICES"] = str("2")
tf.app.flags.DEFINE_integer(
	'batch_size', 100, 'The number of samples in each batch.')

tf.app.flags.DEFINE_integer(
	'max_num_batches', None,
	'Max number of batches to evaluate by default use all.')

tf.app.flags.DEFINE_string(
	'master', '', 'The address of the TensorFlow master to use.')

tf.app.flags.DEFINE_string(
	'checkpoint_path', '/tmp/tfmodel/',
	'The directory where the model was written to or an absolute path to a '
	'checkpoint file.')

tf.app.flags.DEFINE_string(
	'eval_dir', '/tmp/tfmodel/', 'Directory where the results are saved to.')

tf.app.flags.DEFINE_integer(
	'num_preprocessing_threads', 4,
	'The number of threads used to create the batches.')

tf.app.flags.DEFINE_string(
	'dataset_name', 'imagenet', 'The name of the dataset to load.')

tf.app.flags.DEFINE_string(
	'dataset_split_name', 'test', 'The name of the train/test split.')

tf.app.flags.DEFINE_string(
	'dataset_dir', None, 'The directory where the dataset files are stored.')

tf.app.flags.DEFINE_integer(
	'labels_offset', 0,
	'An offset for the labels in the dataset. This flag is primarily used to '
	'evaluate the VGG and ResNet architectures which do not use a background '
	'class for the ImageNet dataset.')

tf.app.flags.DEFINE_string(
	'model_name', 'inception_v3', 'The name of the architecture to evaluate.')

tf.app.flags.DEFINE_string(
	'preprocessing_name', None, 'The name of the preprocessing to use. If left '
								'as `None`, then the model_name flag is used.')

tf.app.flags.DEFINE_float(
	'moving_average_decay', None,
	'The decay to use for the moving average.'
	'If left as None, then moving averages are not used.')

tf.app.flags.DEFINE_integer(
	'eval_image_size', None, 'Eval image size')


tf.app.flags.DEFINE_string(
	'result_name',None,""
)

tf.app.flags.DEFINE_string(
	'result_type',"classify",""
)

tf.app.flags.DEFINE_string(
	'result_path',".",""
)

FLAGS = tf.app.flags.FLAGS

def toARFF(data,filename,target):
    with open(target,"w") as f:
        f.write("@RELATION images\n")
        f.write("@ATTRIBUTE filename string\n")
        head = data[0]
        for i in range(0,len(head)-1):
           f.write("@ATTRIBUTE %s NUMERIC\n"%(filename+str(i)))
        f.write("\n\n@DATA\n")

        for descr in data:
            f.write(",".join(map(str,descr))+"\n")


def main(_):
	if not FLAGS.dataset_dir:
		raise ValueError('You must supply the dataset directory with --dataset_dir')
	print("START!")
	tf.logging.set_verbosity(tf.logging.INFO)
	with tf.Graph().as_default():
		tf_global_step = slim.get_or_create_global_step()

		######################
		# Select the dataset #
		######################
		dataset = dataset_factory.get_dataset(
			FLAGS.dataset_name, FLAGS.dataset_split_name, FLAGS.dataset_dir)

		####################
		# Select the model #
		####################
		network_fn = nets_factory.get_network_fn(
			FLAGS.model_name,
			num_classes=(dataset.num_classes - FLAGS.labels_offset),
			is_training=False)
		#print(dataset.num_classes)
		#print(dir(dataset))
		#print(dataset.num_samples)
		#print(dataset.get_shape())
		##############################################################
		# Create a dataset provider that loads data from the dataset #
		##############################################################
		provider = slim.dataset_data_provider.DatasetDataProvider(
			dataset,
			shuffle=False,
			common_queue_capacity=2 * FLAGS.batch_size,
			common_queue_min=FLAGS.batch_size)
		files=True
		if files:
			[image, label, filename] = provider.get(['image', 'label','filename'])
		else:
			[image, label] = provider.get(['image', 'label'])
		label -= FLAGS.labels_offset

		#####################################
		# Select the preprocessing function #
		#####################################
		preprocessing_name = FLAGS.preprocessing_name or FLAGS.model_name
		image_preprocessing_fn = preprocessing_factory.get_preprocessing(
			preprocessing_name,
			is_training=False)

		eval_image_size = FLAGS.eval_image_size or network_fn.default_image_size

		image = image_preprocessing_fn(image, eval_image_size, eval_image_size)

		if files:
			images, labels, filenames = tf.train.batch(
				[image, label, filename],
				batch_size=FLAGS.batch_size,
				num_threads=FLAGS.num_preprocessing_threads,
				capacity= FLAGS.batch_size,allow_smaller_final_batch=True)
		else:
			images, labels = tf.train.batch(
				[image, label],
				batch_size=FLAGS.batch_size,
				num_threads=FLAGS.num_preprocessing_threads,
				capacity=FLAGS.batch_size,allow_smaller_final_batch=True)


		####################
		# Define the model #
		####################
		logits, endpoints = network_fn(images)

		if FLAGS.moving_average_decay:
			variable_averages = tf.train.ExponentialMovingAverage(
				FLAGS.moving_average_decay, tf_global_step)
			variables_to_restore = variable_averages.variables_to_restore(
				slim.get_model_variables())
			variables_to_restore[tf_global_step.op.name] = tf_global_step
		else:
			variables_to_restore = slim.get_variables_to_restore()

		probabilities = tf.nn.softmax(logits)

		# TODO(sguada) use num_epochs=1
		if FLAGS.max_num_batches:
			num_batches = FLAGS.max_num_batches
		else:
			# This ensures that we make a single pass over all of the data.
			num_batches = math.ceil(dataset.num_samples / float(FLAGS.batch_size))

		if tf.gfile.IsDirectory(FLAGS.checkpoint_path):
			checkpoint_path = tf.train.latest_checkpoint(FLAGS.checkpoint_path)
		else:
			checkpoint_path = FLAGS.checkpoint_path

		init_fn = slim.assign_from_checkpoint_fn(checkpoint_path, variables_to_restore)

		tf.logging.info('Evaluating %s' % checkpoint_path)


		###
		import time

		from tensorflow.contrib.framework.python.ops import variables
		from tensorflow.python.framework import ops
		from tensorflow.python.ops import logging_ops
		from tensorflow.python.platform import tf_logging as logging
		from tensorflow.python.training import saver as tf_saver
		from tensorflow.python.training import summary_io
		from tensorflow.python.training import supervisor
		from tensorflow.python.training import training_util




		saver = tf_saver.Saver(variables_to_restore or
						 variables.get_variables_to_restore())

		#summary_writer = summary_io.SummaryWriter(logdir)

		sv = supervisor.Supervisor(graph=ops.get_default_graph(),
								 logdir=FLAGS.eval_dir,
								 summary_op=None,
								 summary_writer=None,
								 global_step=None,
								 saver=None)

		logging.info('Starting evaluation at ' + time.strftime('%Y-%m-%d-%H:%M:%S',
															 time.gmtime()))

		import collections


		with sv.managed_session(
		  FLAGS.master, start_standard_services=False, config=None) as sess:
			saver.restore(sess, checkpoint_path)
			sv.start_queue_runners(sess)


			if FLAGS.result_type=="classify":
				##export classification

				classifications = {"classifications":{}}
				filenamelist=[]
				for i in xrange(int(num_batches)+1):
					np_probabilities, np_labels, np_filenames, np_endpoints = sess.run([probabilities, labels, filenames, endpoints])
					#print({i:endpoints[i].get_shape() for i in endpoints.keys()})
					#return -1
					for j in xrange(FLAGS.batch_size):
						if not np_filenames[j] in filenamelist:
							filenamelist.append(np_filenames[j])
							tmpprob=[]

							for l in np.argsort(np_probabilities[j, :])[::-1][:5]: #iterate over best 5 probs
								tmpprob.append([str(dataset.labels_to_names[l]).rstrip("\r"),
												"{0:.2f}".format(np_probabilities[j,l]*100)])

							tmp ={np_filenames[j]:tmpprob}
							classifications["classifications"].update(tmp)
						else:
							pass

					print(i)
				print(len(classifications["classifications"]))
				#print(filenamelist)
				sortedclass =collections.OrderedDict()
				for k in sorted(classifications["classifications"]):
					sortedclass.update({k:classifications["classifications"][k]})
				classifications["classifications"]=sortedclass

				jsonecoded = json.dumps(classifications)
				loadconf= open(os.path.join(FLAGS.result_path,FLAGS.result_name+".json"),'wb')
				loadconf.write(jsonecoded)
				loadconf.close()

			if FLAGS.result_type=="stats":
				np_probabilities, np_labels, np_filenames, np_endpoints = sess.run([probabilities, labels, filenames, endpoints])
				print({i:endpoints[i].get_shape() for i in endpoints.keys()}) #layer shapes
				allparams = 0
				for variable in tf.trainable_variables(): #iterate over vars
					shape = variable.get_shape()
					currpar = 1
					for dim in shape: #iterate over shape of var
						currpar *= dim.value
					allparams += currpar #add
				print(allparams)

				return -1 #kill

			if FLAGS.result_type=="decaf":
				##extract DeCAFs
				features =[]
				filenamelist=[]

				layerdefinition ={
					"alexnet_v2":"alexnet_v2/fc7/Relu:0",
					"inception_v1":"MaxPool_0a_7x7",
					"inception_v3":"AvgPool_1a_{}x{}",
					"inception_resnet_v2":"AvgPool_1a_8x8",
					"vgg_16":"vgg_16/fc7/Relu:0",
					"resnet_v1_152":"pool5"

				}

				for i in xrange(int(num_batches)):
					np_probabilities, np_labels, np_filenames, np_endpoints = sess.run([probabilities, labels, filenames, endpoints])

					for j in xrange(FLAGS.batch_size):
						if not np_filenames[j] in filenamelist:
							filenamelist.append(np_filenames[j])

							tmp_descr = (np_endpoints[layerdefinition[FLAGS.model_name]][j][0][0]).tolist()

							tmp_descr.insert(0,(np_filenames[j]).replace(".jpg",""))
							features.append(tmp_descr)
					print(i)
				toARFF(features,FLAGS.result_name,os.path.join(FLAGS.result_path,FLAGS.result_name+".arff"))




if __name__ == '__main__':
	tf.app.run()

