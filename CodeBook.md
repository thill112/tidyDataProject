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

* "timeBodyAcc-mean()-X" 
* "timeBodyAcc-mean()-Y" 
* "timeBodyAcc-mean()-Z" 
* "timeGravityAcc-mean()-X" 
* "timeGravityAcc-mean()-Y" 
* "timeGravityAcc-mean()-Z" 
* "timeBodyAccJerk-mean()-X" 
* "timeBodyAccJerk-mean()-Y" 
* "timeBodyAccJerk-mean()-Z" 
* "timeBodyGyro-mean()-X" 
* "timeBodyGyro-mean()-Y" 
* "timeBodyGyro-mean()-Z" 
* "timeBodyGyroJerk-mean()-X" 
* "timeBodyGyroJerk-mean()-Y" 
* "timeBodyGyroJerk-mean()-Z" 
* "timeBodyAccMag-mean()" 
* "timeGravityAccMag-mean()" 
* "timeBodyAccJerkMag-mean()" 
* "timeBodyGyroMag-mean()" 
* "timeBodyGyroJerkMag-mean()" 
* "frequencyBodyAcc-mean()-X" 
* "frequencyBodyAcc-mean()-Y" 
* "frequencyBodyAcc-mean()-Z" 
* "frequencyBodyAccJerk-mean()-X" 
* "frequencyBodyAccJerk-mean()-Y" 
* "frequencyBodyAccJerk-mean()-Z" 
* "frequencyBodyGyro-mean()-X" 
* "frequencyBodyGyro-mean()-Y" 
* "frequencyBodyGyro-mean()-Z" 
* "frequencyBodyAccMag-mean()" 
* "frequencyBodyBodyAccJerkMag-mean()" 
* "frequencyBodyBodyGyroMag-mean()" 
* "frequencyBodyBodyGyroJerkMag-mean()" 
* "timeBodyAcc-std()-X" 
* "timeBodyAcc-std()-Y" 
* "timeBodyAcc-std()-Z" 
* "timeGravityAcc-std()-X" 
* "timeGravityAcc-std()-Y" 
* "timeGravityAcc-std()-Z" 
* "timeBodyAccJerk-std()-X" 
* "timeBodyAccJerk-std()-Y" 
* "timeBodyAccJerk-std()-Z" 
* "timeBodyGyro-std()-X" 
* "timeBodyGyro-std()-Y" 
* "timeBodyGyro-std()-Z" 
* "timeBodyGyroJerk-std()-X" 
* "timeBodyGyroJerk-std()-Y" 
* "timeBodyGyroJerk-std()-Z" 
* "timeBodyAccMag-std()" 
* "timeGravityAccMag-std()" 
* "timeBodyAccJerkMag-std()" 
* "timeBodyGyroMag-std()" 
* "timeBodyGyroJerkMag-std()" 
* "frequencyBodyAcc-std()-X" 
* "frequencyBodyAcc-std()-Y" 
* "frequencyBodyAcc-std()-Z" 
* "frequencyBodyAccJerk-std()-X" 
* "frequencyBodyAccJerk-std()-Y" 
* "frequencyBodyAccJerk-std()-Z" 
* "frequencyBodyGyro-std()-X" 
* "frequencyBodyGyro-std()-Y" 
* "frequencyBodyGyro-std()-Z" 
* "frequencyBodyAccMag-std()" 
* "frequencyBodyBodyAccJerkMag-std()" 
* "frequencyBodyBodyGyroMag-std()" 
* "frequencyBodyBodyGyroJerkMag-std()"


