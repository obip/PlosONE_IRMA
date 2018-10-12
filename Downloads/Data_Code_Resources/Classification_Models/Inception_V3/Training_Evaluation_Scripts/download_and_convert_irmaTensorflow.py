# Copyright 2016 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
r"""Downloads and converts a particular dataset.

Usage:
```shell

$ python download_and_convert_data.py \
    --dataset_name=mnist \
    --dataset_dir=/tmp/mnist

$ python download_and_convert_data.py \
    --dataset_name=cifar10 \
    --dataset_dir=/tmp/cifar10

$ python download_and_convert_data.py \
    --dataset_name=flowers \
    --dataset_dir=/tmp/flowers
```
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf

from datasets import download_and_convert_1T
from datasets import download_and_convert_1D
from datasets import download_and_convert_1A
from datasets import download_and_convert_1B
from datasets import download_and_convert_1Flat
#
from datasets import download_and_convert_2T
from datasets import download_and_convert_2D
from datasets import download_and_convert_2A
from datasets import download_and_convert_2B
from datasets import download_and_convert_2Flat
#
from datasets import download_and_convert_3T
from datasets import download_and_convert_3D
from datasets import download_and_convert_3A
from datasets import download_and_convert_3B
from datasets import download_and_convert_3Flat
#
from datasets import download_and_convert_4T
from datasets import download_and_convert_4D
from datasets import download_and_convert_4A
from datasets import download_and_convert_4B
from datasets import download_and_convert_4Flat
#
from datasets import download_and_convert_5T
from datasets import download_and_convert_5D
from datasets import download_and_convert_5A
from datasets import download_and_convert_5B
from datasets import download_and_convert_5Flat
#
from datasets import download_and_convert_6T
from datasets import download_and_convert_6D
from datasets import download_and_convert_6A
from datasets import download_and_convert_6B
from datasets import download_and_convert_6Flat

#
from datasets import download_and_convert_7T
from datasets import download_and_convert_7D
from datasets import download_and_convert_7A
from datasets import download_and_convert_7B
from datasets import download_and_convert_7Flat

#
from datasets import download_and_convert_8T
from datasets import download_and_convert_8D
from datasets import download_and_convert_8A
from datasets import download_and_convert_8B
from datasets import download_and_convert_8Flat

FLAGS = tf.app.flags.FLAGS

tf.app.flags.DEFINE_string(
    'dataset_name',
    None,
    'The name of the dataset to convert, one of "cifar10", "flowers", "mnist".')

tf.app.flags.DEFINE_string(
    'dataset_dir',
    None,
    'The directory where the output TFRecords and temporary files are saved.')


def main(_):
  if not FLAGS.dataset_name:
    raise ValueError('You must supply the dataset name with --dataset_name')
  if not FLAGS.dataset_dir:
    raise ValueError('You must supply the dataset directory with --dataset_dir')

  if FLAGS.dataset_name == '1T':
    download_and_convert_1T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '1D':
    download_and_convert_1D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '1A':
    download_and_convert_1A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '1B':
    download_and_convert_1B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '1Flat':
    download_and_convert_1Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '2T':
    download_and_convert_2T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '2D':
    download_and_convert_2D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '2A':
    download_and_convert_2A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '2B':
    download_and_convert_2B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '2Flat':
    download_and_convert_2Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '3T':
    download_and_convert_3T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '3D':
    download_and_convert_3D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '3A':
    download_and_convert_3A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '3B':
    download_and_convert_3B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '3Flat':
    download_and_convert_3Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '4T':
    download_and_convert_4T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '4D':
    download_and_convert_4D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '4A':
    download_and_convert_4A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '4B':
    download_and_convert_4B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '4Flat':
    download_and_convert_4Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '5T':
    download_and_convert_5T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '5D':
    download_and_convert_5D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '5A':
    download_and_convert_5A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '5B':
    download_and_convert_5B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '5Flat':
    download_and_convert_5Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '6T':
    download_and_convert_6T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '6D':
    download_and_convert_6D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '6A':
    download_and_convert_6A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '6B':
    download_and_convert_6B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '6Flat':
    download_and_convert_6Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '7T':
    download_and_convert_7T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '7D':
    download_and_convert_7D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '7A':
    download_and_convert_7A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '7B':
    download_and_convert_7B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '7Flat':
    download_and_convert_7Flat.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '8T':
    download_and_convert_8T.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '8D':
    download_and_convert_8D.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '8A':
    download_and_convert_8A.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '8B':
    download_and_convert_8B.run(FLAGS.dataset_dir)
  elif FLAGS.dataset_name == '8Flat':
    download_and_convert_8Flat.run(FLAGS.dataset_dir)
  else:
    raise ValueError(
        'dataset_name [%s] was not recognized.' % FLAGS.dataset_dir)

if __name__ == '__main__':
  tf.app.run()

