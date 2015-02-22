# CodeBook
This code book describes the data in UIC_DATA_Summary_tidy.txt that was produced from running run_analysis.R on the original UCI data set.

# Raw Data
The raw data used for this analysis was obtained from the following URL.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Once the raw data has been unzipped. It will create a directory and several sub directories.

* Top level Directory: UCI HAR Dataset
    * Sub Directory: train
    * Sub Directory: test

Under the top level directory there is a README.txt that gives very specific info
about the layout and content of the data sets.


# Columns 
The following is a description of the columns in the UCI_DATA_SummaryAvg_tidy.txt file.

* "subject" - The id of subject who produced the observations. Range of the ids are 1 - 30 for the 30 subjects of this data set.

* "activity" - The observed activity when the data was recorded:
    
    * LAYING,
    * SITTING,
    * STANDING,
    * WALKING,
    * WALKING_DOWNSTAIRS,
    * WALKING_UPSTAIRS,


The remaining columns contain the mean() of the given attribute column name for the subject,activity, and attribute field. Details of the original data attributes can be found in the features_info.txt in the top level data directory. 

* "tBodyAcc-mean()-X" 
* "tBodyAcc-mean()-Y" 
* "tBodyAcc-mean()-Z" 
* "tGravityAcc-mean()-X" 
* "tGravityAcc-mean()-Y" 
* "tGravityAcc-mean()-Z" 
* "tBodyAccJerk-mean()-X" 
* "tBodyAccJerk-mean()-Y" 
* "tBodyAccJerk-mean()-Z" 
* "tBodyGyro-mean()-X" 
* "tBodyGyro-mean()-Y" 
* "tBodyGyro-mean()-Z" 
* "tBodyGyroJerk-mean()-X" 
* "tBodyGyroJerk-mean()-Y" 
* "tBodyGyroJerk-mean()-Z" 
* "tBodyAccMag-mean()" 
* "tGravityAccMag-mean()" 
* "tBodyAccJerkMag-mean()" 
* "tBodyGyroMag-mean()" 
* "tBodyGyroJerkMag-mean()" 
* "fBodyAcc-mean()-X" 
* "fBodyAcc-mean()-Y" 
* "fBodyAcc-mean()-Z" 
* "fBodyAccJerk-mean()-X" 
* "fBodyAccJerk-mean()-Y" 
* "fBodyAccJerk-mean()-Z" 
* "fBodyGyro-mean()-X" 
* "fBodyGyro-mean()-Y" 
* "fBodyGyro-mean()-Z" 
* "fBodyAccMag-mean()" 
* "fBodyBodyAccJerkMag-mean()" 
* "fBodyBodyGyroMag-mean()" 
* "fBodyBodyGyroJerkMag-mean()" 
* "tBodyAcc-std()-X" 
* "tBodyAcc-std()-Y" 
* "tBodyAcc-std()-Z" 
* "tGravityAcc-std()-X" 
* "tGravityAcc-std()-Y" 
* "tGravityAcc-std()-Z" 
* "tBodyAccJerk-std()-X" 
* "tBodyAccJerk-std()-Y" 
* "tBodyAccJerk-std()-Z" 
* "tBodyGyro-std()-X" 
* "tBodyGyro-std()-Y" 
* "tBodyGyro-std()-Z" 
* "tBodyGyroJerk-std()-X" 
* "tBodyGyroJerk-std()-Y" 
* "tBodyGyroJerk-std()-Z" 
* "tBodyAccMag-std()" 
* "tGravityAccMag-std()" 
* "tBodyAccJerkMag-std()" 
* "tBodyGyroMag-std()" 
* "tBodyGyroJerkMag-std()" 
* "fBodyAcc-std()-X" 
* "fBodyAcc-std()-Y" 
* "fBodyAcc-std()-Z" 
* "fBodyAccJerk-std()-X" 
* "fBodyAccJerk-std()-Y" 
* "fBodyAccJerk-std()-Z" 
* "fBodyGyro-std()-X" 
* "fBodyGyro-std()-Y" 
* "fBodyGyro-std()-Z" 
* "fBodyAccMag-std()" 
* "fBodyBodyAccJerkMag-std()" 
* "fBodyBodyGyroMag-std()" 
* "fBodyBodyGyroJerkMag-std()"


