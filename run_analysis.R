# You should create one R script called run_analysis.R that does the following.
# ** 1. Merges the training and the test sets to create one data set.
data_folder <- "UCI HAR Dataset"
# Load test dataset
subject_test <-
  read.table(paste(data_folder, "test", "subject_test.txt", sep = "/"))
X_test <-
  read.table(paste(data_folder, "test", "X_test.txt", sep = "/"))
y_test <-
  read.table(paste(data_folder, "test", "y_test.txt", sep = "/"))
# Load training dataset
subject_train <-
  read.table(paste(data_folder, "train", "subject_train.txt", sep = "/"))
X_train <-
  read.table(paste(data_folder, "train", "X_train.txt", sep = "/"))
y_train <-
  read.table(paste(data_folder, "train", "y_train.txt", sep = "/"))
# Merge and assign names to subject and y columns
subject <- rbind(subject_test, subject_train)
names(subject) <- "subject_id"
y <- rbind(y_test, y_train)
names(y) <- "activity_id"
# ** 3. Uses descriptive activity names to name the activities in the data set
activity_labels <-
  read.table(paste(data_folder, "activity_labels.txt", sep = "/"))
names(activity_labels) <- c("activity_id", "activity_name")
activities <- merge(y, activity_labels)
# ** 4. Appropriately labels the data set with descriptive variable names.
# Merge and assign names to X (variable observations)
X <- rbind(X_test, X_train)
features <-
  read.table(paste(data_folder, "features.txt", sep = "/"))
names(features) <- c("order", "name")
names(X) <- features$name
# ** 2. Extracts only the measurements on the mean and standard deviation for
# each measurement.
extracted_cols <-
  grepl("-mean\\(\\)", names(X)) | grepl("-std\\(\\)", names(X))
measurements <- X[, extracted_cols]
# Join the dataset: subject + activity + extracted measurements
full_ds <-
  cbind(subject, activity_name = activities$activity_name, measurements)
# ** 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
library(dplyr)
tidy_ds <-
  full_ds %>%
  group_by(subject_id, activity_name) %>%
  arrange(subject_id, activity_name)  %>%
  summarize_all(funs(mean))
