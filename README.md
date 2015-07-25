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

The resulting tidy data set is saved in the output file Project.TidyData.txt.
## Output File: Project.TidyData.Txt
This contains the cleaned up output data for the project.
