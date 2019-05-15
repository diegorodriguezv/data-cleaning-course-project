# Analysis Instructions
## Course Project - Getting and Cleaning Data (coursera.org) 
#### By: Diego Fernando Rodríguez Varón

This is the description for the analysis of a dataset of wearable 
accelerometer data from a project titled __Human Activity Recognition Using 
Smartphones__. More information about the dataset can be obtained 
[here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The codebook for this analysis can be found in the [CodeBook.md file](CodeBook.md).

The goal of this project is to create a tidy summarized dataset based on the 
original dataset. The main guidelines for this process are
[in this document](https://github.com/DataScienceSpecialization/courses/blob/master/03_GettingData/01_03_componentsOfTidyData/index.md) 
which in turn is based on [this one](https://github.com/jtleek/datasharing).

The stated steps for this project are as follows:

>You should create one R script called [run_analysis.R](run_analysis.R) that does the following.

>1.  Merges the training and the test sets to create one data set.
>2.  Extracts only the measurements on the mean and standard deviation for each measurement.
>3.  Uses descriptive activity names to name the activities in the data set
>4.  Appropriately labels the data set with descriptive variable names.
>5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I tried to follow this steps but had to move the second step before the fifth 
because it made more sense to extract the specified measurements using the variable names.
Each step is properly documented in the single [run_analysis.R](run_analysis.R) script. 



