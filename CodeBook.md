# Code Book
## Course Project - Getting and Cleaning Data (coursera.org) 
#### By: Diego Fernando Rodríguez Varón

This file provides information about the analysis done on a dataset of wearable 
accelerometer data from a project titled __Human Activity Recognition Using 
Smartphones__. More information about the dataset can be obtained [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Study Design 

The original dataset is in the `UCI HAR DATASET` folder, that has this 
structure:
```
│   activity_labels.txt
│   features.txt
│   features_info.txt
│   README.txt
│
├───test
│   │   subject_test.txt
│   │   X_test.txt
│   │   y_test.txt
│   │
│   └───Inertial Signals
│           body_acc_x_test.txt
│           body_acc_y_test.txt
│           body_acc_z_test.txt
│           body_gyro_x_test.txt
│           body_gyro_y_test.txt
│           body_gyro_z_test.txt
│           total_acc_x_test.txt
│           total_acc_y_test.txt
│           total_acc_z_test.txt
│
└───train
    │   subject_train.txt
    │   X_train.txt
    │   y_train.txt
    │
    └───Inertial Signals
            body_acc_x_train.txt
            body_acc_y_train.txt
            body_acc_z_train.txt
            body_gyro_x_train.txt
            body_gyro_y_train.txt
            body_gyro_z_train.txt
            total_acc_x_train.txt
            total_acc_y_train.txt
            total_acc_z_train.txt
```
This analysis is based on the original dataset so it's very important to 
read and understand it's documentation first. These are the relevant files:
- [README.txt](UCI&#32;HAR&#32;Dataset/README.txt)
- [features_info.txt](UCI&#32;HAR&#32;Dataset/features_info.txt)

## Code book

The result dataset (`tidy_ds` in the script) is the average of each extracted 
variable for each activity and each subject. The extracted variables are the 
ones that have `-mean()` or `-std()` on their name. Their description is in the 
[features_info.txt file](UCI&#32;HAR&#32;Dataset/features_info.txt). Since the 
values are averages on 
the  original values which were already the mean and standard deviation of the
euclidean norm of acceleration and gyroscope data, the units of the data are not
relevant nor possible to say.

For completeness here is a list of the variables in the tidy dataset:

1. subject_id
1. activity_name
1. tBodyAcc-mean()-X
1. tBodyAcc-mean()-Y
1. tBodyAcc-mean()-Z
1. tBodyAcc-std()-X
1. tBodyAcc-std()-Y
1. tBodyAcc-std()-Z
1. tGravityAcc-mean()-X
1. tGravityAcc-mean()-Y
1. tGravityAcc-mean()-Z
1. tGravityAcc-std()-X
1. tGravityAcc-std()-Y
1. tGravityAcc-std()-Z
1. tBodyAccJerk-mean()-X
1. tBodyAccJerk-mean()-Y
1. tBodyAccJerk-mean()-Z
1. tBodyAccJerk-std()-X
1. tBodyAccJerk-std()-Y
1. tBodyAccJerk-std()-Z
1. tBodyGyro-mean()-X
1. tBodyGyro-mean()-Y
1. tBodyGyro-mean()-Z
1. tBodyGyro-std()-X
1. tBodyGyro-std()-Y
1. tBodyGyro-std()-Z
1. tBodyGyroJerk-mean()-X
1. tBodyGyroJerk-mean()-Y
1. tBodyGyroJerk-mean()-Z
1. tBodyGyroJerk-std()-X
1. tBodyGyroJerk-std()-Y
1. tBodyGyroJerk-std()-Z
1. tBodyAccMag-mean()
1. tBodyAccMag-std()
1. tGravityAccMag-mean()
1. tGravityAccMag-std()
1. tBodyAccJerkMag-mean()
1. tBodyAccJerkMag-std()
1. tBodyGyroMag-mean()
1. tBodyGyroMag-std()
1. tBodyGyroJerkMag-mean()
1. tBodyGyroJerkMag-std()
1. fBodyAcc-mean()-X
1. fBodyAcc-mean()-Y
1. fBodyAcc-mean()-Z
1. fBodyAcc-std()-X
1. fBodyAcc-std()-Y
1. fBodyAcc-std()-Z
1. fBodyAccJerk-mean()-X
1. fBodyAccJerk-mean()-Y
1. fBodyAccJerk-mean()-Z
1. fBodyAccJerk-std()-X
1. fBodyAccJerk-std()-Y
1. fBodyAccJerk-std()-Z
1. fBodyGyro-mean()-X
1. fBodyGyro-mean()-Y
1. fBodyGyro-mean()-Z
1. fBodyGyro-std()-X
1. fBodyGyro-std()-Y
1. fBodyGyro-std()-Z
1. fBodyAccMag-mean()
1. fBodyAccMag-std()
1. fBodyBodyAccJerkMag-mean()
1. fBodyBodyAccJerkMag-std()
1. fBodyBodyGyroMag-mean()
1. fBodyBodyGyroMag-std()
1. fBodyBodyGyroJerkMag-mean()
1. fBodyBodyGyroJerkMag-std()