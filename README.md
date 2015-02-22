# tidyDataProject
Project for Coursera Class: Getting and Cleaning Data
R project to produce tidy dataset from UCI data. 


#Repository files

* README.md - this file.

* run_analysis.R - the R script that merges, cleans, and produces the UIC_DATA_SummaryAvg_tidy.txt output file. Preresequite is that it is located in directory where the rasw data set was extracted, The directory 'UCI HAR Dataset' should exists in the same directory as this R script. 

* CodeBook.md - description of the UIC_DATA_SummaryAvg_tidy.txt file

* UIC_DATA_SummaryAvg_tidy.txt - Tidy data set that is produced from running the run_analysis.R script on the raw data. It contains subjec,activity and columns of the mean() of each measurement.


#Creation of the tidy data set
* Create a working directory 
* Download the zip file from the following URL: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Extract the downloaded dataset zip file
* Copy the run_analysis.R script into the working directory
* Using R studio set your working directory to the working directory
* Execute the run_analysis.R script
*  UIC_DATA_SummaryAvg_tidy.txt is produced in working directory.


#Transforming the DATA
The run_analysis.R script:

* train/X_train.txt and test/X_test.txt are merged
    * using rbind() - stacks x_train on top of x_test
* train/y_train.txt and test/y_test.txt are merged
    * using rbind() - stacks y_train on top of y_test
* train/subject_train.txt and test/subject_test.txt are merged
    * using rbind() - stacks subject_train on top of subject_test
* The resulting datasets are merged together 
    * using cbind() - in the order subject, y, and x
* The Columns are then renamed. "subject" and "activity" are the first two columns, labels from features.txt for the remaining columns
* A subset of columns are selected. Subject, Activity, and columns with "mean()" or "std()" in the name
* The activity_labels.txt file is used to converted from the numeric id to the actual name
* Data is grouped by subject and activity. The mean of the other columns is calculate for each group
* UCI_DATA_SummaryAvg_tidy.txt is produced in the working directory