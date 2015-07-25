# Getting And Cleaning Data: Course Project
This directory contains the source file and output data for the course 
project in the Data Science sequence course Getting and Cleaning Data.
## Input data: UCI HAR dataset/*
The source data for this project is a set of accelerometer data collected
on Samsung Galaxy S smartphones around activities performed by subjects of
the study.  More details on the variables in the data set is available 
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Source code: run_analysis.R
The script reads the data from the Samsung dataset (including both the 
training and test data), extracts the mean and standard deviation 
variables for each activity and finally calculates the mean values for
each variable grouped by subject and activity.

The specific steps taken in the script include:

* Load the activity and feature descriptors
* Load the training data and the testing data
* Join the training and testing data together into a common data frame
* Add activity descriptions and join them to subjects
* add column names to all of the columns
* Select the standard deviation and mean columns from the input data
* group and summarize the mean values based on subject and activity

To run the script, the data must be within the “UCI HAR Dataset” sub-directory
of the working directory.  Simply run the script using ‘RScript run_analysis.R’
from the command line or with source(“run_analysis.R”) from within R or RStudio.

The resulting tidy data set is saved in the output file Project.TidyData.txt.
## Output File: Project.TidyData.Txt
This contains the cleaned up output data for the project.

The variables have the same general meaning as described in the source data
but now represent the mean values for those measurements for the specified 
subject and activity.
