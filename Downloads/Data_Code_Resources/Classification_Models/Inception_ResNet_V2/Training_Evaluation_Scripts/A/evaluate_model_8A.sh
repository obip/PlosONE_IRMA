#!/bin/bash
#
# This script performs the following operations:
# 1. Evaluates the model on the IRMA 8A validation set.

# Where the pre-trained InceptionResNetV2 checkpoint is saved to.
PRETRAINED_CHECKPOINT_DIR=/home/obi/Documents/checkpoints

# Where the training (fine-tuned) checkpoint and logs will be saved to.
TRAIN_DIR=/home/obi/Documents/sp/08/A/modelsResV2

# Where the dataset is saved to.
DATASET_DIR=/home/obi/Documents/sp/08/A


# Run evaluation.
python eval_image_classifier.py \
  --checkpoint_path=${TRAIN_DIR} \
  --eval_dir=${TRAIN_DIR} \
 --dataset_name=irma8A \
  --dataset_split_name=validation \
  --dataset_dir=${DATASET_DIR} \
  --model_name=inception_resnet_v2


# Run evaluation.
python eval_image_classifier.py \
  --checkpoint_path=${TRAIN_DIR}/all \
  --eval_dir=${TRAIN_DIR}/all \
  --dataset_name=irma8A \
  --dataset_split_name=validation \
  --dataset_dir=${DATASET_DIR} \
  --model_name=inception_resnet_v2
