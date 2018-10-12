The contents of this repository show the source code of the work submitted to the machine learning collection with the title "Annotation of enhanced radiographs for medical image
retrieval with deep convolutional neural networks" and number PONE-D-18-15717.

There are two directories:
1. Classification_Models
2. Image_Preprocessing

1.The directory Classification_Models contains the three classifcation methods used for the submitted work.
01 = Image Padding
02 = Image Padding/Layered
03 = Image Layered
05 = Original Image
07 = Clahe
08 = NlMeans
a. Inception_ResNet_V2
This folder has all work done for the deep learning system Inception_ResNet_V2

a1. Image_Lists_Lables
All labels and image annotations for the training and test sets are listed here
a2. Training_Evaluation_Scripts
All python and shell scripts used for the work can be found here.
This includes the training scripts, evaluation scripts as well as preprocessing scripts.
Each classification scheme from the IRMA code has a seperate folder.

b. Inception_V3
This folder has all work done for the deep learning system Inception_V3

b1. Image_Lists_Lables
All labels and image annotations for the training and test sets are listed here
b2. Training_Evaluation_Scripts
All python and shell scripts used for the work can be found here.
This includes the training scripts, evaluation scripts as well as preprocessing scripts.
Each classification scheme from the IRMA code has a seperate folder.

c. Random Forest
This folder has all work done for the traditional classification method Random Forest

All scripts used to compute feature representation as well as classification scripts are stored here.

2.The directory Image_Preprocessing contains all matlab scripts used to preprocess the training and test images to obtain the various image input types.
Scripts used to create folder struture needed for the deep learning systems can be found here.


Due to license agreement, we are not allowed to redistribute the images of the ImageCLEF Medical Annotation Task 2009. The radiograohs can be obtained from Prof. Dr. rer. nat. Dipl.-Ing. Thomas M. Deserno, after licence agreement is fulfilled.

