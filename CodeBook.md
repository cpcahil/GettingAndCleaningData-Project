
# CodeBook for the tidy dataset: Project.TidyData.txt

## Data Source
The source for the data used in this project was:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Though, for the class, we used a saved copy of the data sourced from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Tidying
The recorded mean and standard deviation observations were extracted from the data and 
combined into a mean by subject and activity.
## Features
The following variables are present in the tidy dataset:

* Subject - subject identifier ranging from 1 to 30
* Activity - activity identification string.  6 possible values:
***** WALKING
** WALKING_UPSTAIRS
** WALKING_DOWNSTAIRS
** SITTING
** STANDING
** LAYING
* Average accelerometer mean and standard deviation measurements including:
> tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y,
> tBodyAcc-std()-Z, tGravityAcc-mean()-X, tGravityAcc-mean()-Y,
> tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z,
> tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z, tBodyAccJerk-std()-X,
> tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z, tBodyGyro-mean()-X, tBodyGyro-mean()-Y,
> tBodyGyro-mean()-Z, tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z,
> tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X
> (dbl), tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z, tBodyAccMag-mean(), tBodyAccMag-std(),
> tGravityAccMag-mean(), tGravityAccMag-std(), tBodyAccJerkMag-mean(), tBodyAccJerkMag-std(),
> tBodyGyroMag-mean(), tBodyGyroMag-std(), tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std(),
> fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z, fBodyAcc-std()-X, fBodyAcc-std()-Y
> (dbl), fBodyAcc-std()-Z, fBodyAcc-meanFreq()-X, fBodyAcc-meanFreq()-Y, fBodyAcc-meanFreq()-Z,
> fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z, fBodyAccJerk-std()-X,
> fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z, fBodyAccJerk-meanFreq()-X, fBodyAccJerk-meanFreq()-Y
> (dbl), fBodyAccJerk-meanFreq()-Z, fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z,
> fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z, fBodyGyro-meanFreq()-X,
> fBodyGyro-meanFreq()-Y, fBodyGyro-meanFreq()-Z, fBodyAccMag-mean(), fBodyAccMag-std(),
> fBodyAccMag-meanFreq(), fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std(),
> fBodyBodyAccJerkMag-meanFreq(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(),
> fBodyBodyGyroMag-meanFreq(), fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std(),
> fBodyBodyGyroJerkMag-meanFreq()