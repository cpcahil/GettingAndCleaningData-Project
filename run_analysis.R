#!/usr/bin/Rscript
##
## Assignment:      Getting and Cleaning Data Project 1
##
## Author:          Conor P. Cahill
##
## Description:     Tidy up the smartphone database including the following steps:
##
##                  1. Merge the training and test data sets to create one data set
##                  2. Extract only the measurements on the mean and standard deviation
##                     for each measurement
##                  3. Uses descriptive activity names to name the activities in the data set
##                  4. Appropriately labels the data set with descriptive variable names
##                  5. From the data in step 4, creates a second, independent tidy data set
##                     with the average of each variable for each activity and each subject

library(dplyr)

#
# Get the activity and feature descriptors
#
activity_descriptions <- read.table("UCI HAR Dataset/activity_labels.txt")
feature_descriptions <- as.character(unlist(read.table("UCI HAR Dataset/features.txt")["V2"]))

#
# Get the training data
#
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_activities <- read.table("UCI HAR Dataset/train/y_train.txt")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")

#
# Now read in the testing data
#
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_activities <- read.table("UCI HAR Dataset/test/y_test.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")

#
# join the data sets together
#
subjects <- rbind(train_subjects, test_subjects)
activities <- rbind(train_activities, test_activities)
data <- rbind(train_data, test_data)

#
# add activity descriptors to the activities
#
activities <- merge(activities, activity_descriptions)[,2]

#
# Join the subjects and activities into keys
#
keys = cbind(subjects, activities)

#
# add column names to each of the data pools
#
colnames(keys) <- c("subject", "activity")
colnames(data) <- feature_descriptions

#
# extract only the mean and standard deviation values
#
data <- data[,grep(".*-std().*|.*-mean().*", feature_descriptions)]

#
# bind the columns together
#
data = cbind(keys, data)

#
# Create the tidy data form with the average of each variable for each activity and subject
#
tdata <- data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

#
# Save the tidy data as a text file
#
write.table(tdata, file="Project.TidyData.txt", row.name=FALSE)
