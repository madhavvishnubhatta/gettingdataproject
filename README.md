# gettingdataproject
Project for Getting and Cleaning Data coursera course.

The repo contairns the code run_analysis.R.  This code contains all the clean up that was done on the RAW data.

This code assumes that the data set with the folder structure as it was downloaded from the link below is present in the working directory.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Walkthrough of the code
The first and second steps in the code just read the features.txt and activity_labels.txt and stores it in a dataframe.

The third steps reads the raw data and, in the process, assigning descriptive names to the columns which we read in Step1 from features.txt

