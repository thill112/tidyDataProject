#   Coursera:   Getting_and_Cleaning_Data
#   
#   Author: Tracy Hill
#   File:   run_analysis.R
#   
#   History: created  22 Feb 2014

#
#  Data for this project was obtained from:
#  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
#required packages
library(dplyr)


# Assumptions
# you have retrieved the data set from the location specified above
# you have unzipped it.
# Your dataDir resides in your current working directory.
# Tested on Windows. 

#constants and definitions
projDir<-getwd()
dataDir<-paste(projDir,"UCI HAR Dataset",sep = "/") 
testDir<-paste(dataDir,"test",sep = "/") 
trainDir<-paste(dataDir,"train",sep = "/") 

#file name defines
featureNames<-"features.txt"
activityNames<-"activity_labels.txt"

outputFileName<-"./UCI_DATA_SummaryAvg_tidy.txt"

#
print(sprintf("%s: %s","Project Working Directory",projDir))


#read the data from training session
temp<-setwd(trainDir)

print(sprintf("reading training data from: %s",trainDir))
x_train<-read.table("X_train.txt")

y_train<-read.table("Y_train.txt")

subject_train<-read.table("subject_train.txt")


#read data from the test session
setwd(testDir)
print(sprintf("reading test data from: %s",testDir))
x_test<-read.table("X_test.txt")

y_test<-read.table("Y_test.txt")

subject_test<-read.table("subject_test.txt")



print("Combining train,test, and subject data")
#combine the (x) training and test data sets into one data set.
x_merged<-rbind(x_train, x_test)

#combine the (y) training and test data sets into one data set.
y_merged<-rbind(y_train, y_test)

#combine the subjects for training and test into one data set.
s_merged<-rbind(subject_train, subject_test)


print("merging tables")
# merge the three tables into a full table that contains subject,x_data,y_data
merged_data<-cbind(s_merged, y_merged, x_merged)



#read the features and and replace column names with new names
setwd(dataDir)
print(sprintf("reading feature label data from: %s",dataDir))

features<-read.table(featureNames, header=F, stringsAsFactors=F)
names(merged_data)<-c("subject", "activity", make.unique(features$V2))

#read activity label data and replace the column values with label text
activity_labels<-read.table(activityNames, header=F, stringsAsFactors=F)
activity_names<-activity_labels$V2
merged_data<-mutate(merged_data, activity = activity_names[activity])

# now select only the subject, activity, mean, and std cols
all_data<-tbl_df(merged_data)
subj_act_mean_std_data<-select(all_data, subject, activity, contains('mean()'),contains('std()'))





#end and set working directory to project directory
# create summary report.

setwd(projDir)

# reorganize the data : group by subject and activity
subj_activity_group_data<-group_by(subj_act_mean_std_data, subject, activity)

# create summary of each
summary<-summarise_each(subj_activity_group_data, funs(mean), contains('mean()'),contains('std()'))

#clean up the labels that are in the tidy data output file.
flabels<-names(summary)
flabels<-gsub("tBody","timeBody",flabels)
flabels<-gsub("tGravity","timeGravity",flabels)
flabels<-gsub("fBody","frequencyBody",flabels)
names(summary)<-c(make.unique(flabels))

print(sprintf("Creating file: %s",outputFileName))
write.table(summary, outputFileName, row.names=FALSE)

