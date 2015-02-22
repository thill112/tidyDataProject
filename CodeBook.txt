# CodeBook
This code book describes the data in UIC_DATA_Summary_tidy.txt that was produced from running run_analysis.R on the original UCI data set.

# Raw Data
The raw data used for this analysis was obtained from the following url.
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

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

