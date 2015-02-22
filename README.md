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

