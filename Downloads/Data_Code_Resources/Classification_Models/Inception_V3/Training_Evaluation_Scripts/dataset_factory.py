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
"""A factory-pattern class which returns classification image/label pairs."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from datasets import cifar10
from datasets import flowers
from datasets import imagenet
from datasets import mnist
from datasets import irmaa
from datasets import irmab
from datasets import irmacT
from datasets import irmacD
from datasets import irmacA
from datasets import irmacB
from datasets import irmadT
from datasets import irmadD
from datasets import irmadA
from datasets import irmadAH
from datasets import irmadB
from datasets import irmad
from datasets import irma5
from datasets import irma6


from datasets import irma1T
from datasets import irma2T
from datasets import irma3T
from datasets import irma4T
from datasets import irma5T
from datasets import irma8T
from datasets import irma7T
from datasets import irma6T

from datasets import irma1D
from datasets import irma2D
from datasets import irma3D
from datasets import irma4D
from datasets import irma5D
from datasets import irma6D
from datasets import irma7D
from datasets import irma8D

from datasets import irma1A
from datasets import irma2A
from datasets import irma3A
from datasets import irma4A
from datasets import irma5A
from datasets import irma6A
from datasets import irma7A
from datasets import irma8A

from datasets import irma1B
from datasets import irma2B
from datasets import irma3B
from datasets import irma4B
from datasets import irma5B
from datasets import irma6B
from datasets import irma7B
from datasets import irma8B

from datasets import irma1Flat
from datasets import irma2Flat
from datasets import irma3Flat
from datasets import irma4Flat
from datasets import irma5Flat
from datasets import irma6Flat
from datasets import irma7Flat
from datasets import irma8Flat


datasets_map = {
    'cifar10': cifar10,
    'flowers': flowers,
    'imagenet': imagenet,
    'mnist': mnist,
    'irmaa': irmaa,
    'irmab': irmab,
    'irmacT': irmacT,
    'irmacD': irmacD,
    'irmacA': irmacA,
    'irmacB': irmacB,
    'irmadT': irmadT,
    'irmadD': irmadD,
    'irmadA': irmadA,
    'irmadAH' : irmadAH,
    'irmadB': irmadB,
    'irmad': irmad,
    'irma5': irma5,
    'irma6': irma6,
    'irma1T': irma1T,
    'irma2T': irma2T,
    'irma3T': irma3T,
    'irma4T': irma4T,
    'irma5T': irma5T,
    'irma6T': irma6T,
    'irma7T': irma7T,
    'irma8T': irma8T,
    'irma1D': irma1D,
    'irma2D': irma2D,
    'irma3D': irma3D,
    'irma4D': irma4D,
    'irma5D': irma5D,
    'irma6D': irma6D,
    'irma7D': irma7D,
    'irma8D': irma8D,
    'irma1A': irma1A,
    'irma2A': irma2A,
    'irma3A': irma3A,
    'irma4A': irma4A,
    'irma5A': irma5A,
    'irma6A': irma6A,
    'irma7A': irma7A,
    'irma8A': irma8A,
    'irma1B': irma1B,
    'irma2B': irma2B,
    'irma3B': irma3B,
    'irma4B': irma4B,
    'irma5B': irma5B,
    'irma6B': irma6B,
    'irma7B': irma7B,
    'irma8B': irma8B,
    'irma1Flat': irma1Flat,
    'irma2Flat': irma2Flat,
    'irma3Flat': irma3Flat,
    'irma4Flat': irma4Flat,
    'irma5Flat': irma5Flat,
    'irma6Flat': irma6Flat,
    'irma7Flat': irma7Flat,
    'irma8Flat': irma8Flat
}


def get_dataset(name, split_name, dataset_dir, file_pattern=None, reader=None):
  """Given a dataset name and a split_name returns a Dataset.

  Args:
    name: String, the name of the dataset.
    split_name: A train/test split name.
    dataset_dir: The directory where the dataset files are stored.
    file_pattern: The file pattern to use for matching the dataset source files.
    reader: The subclass of tf.ReaderBase. If left as `None`, then the default
      reader defined by each dataset is used.

  Returns:
    A `Dataset` class.

  Raises:
    ValueError: If the dataset `name` is unknown.
  """
  if name not in datasets_map:
    raise ValueError('Name of dataset unknown %s' % name)
  return datasets_map[name].get_split(
      split_name,
      dataset_dir,
      file_pattern,
      reader)
