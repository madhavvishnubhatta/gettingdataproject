#Project "Getting and Cleaning Data" coursera course.

The repo contairns the code run_analysis.R.  This code contains all the clean up that was done on the RAW data.

This code assumes that the data set with the folder structure as it was downloaded from the link below is present in the working directory.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Walkthrough of the code
The first and second steps in the code just read the features.txt and activity_labels.txt and stores it in a dataframe.

The third step reads the raw data and, in the process, assigning descriptive names to the columns which we read in Step1 from features.txt. This data is then merged (so that both the training and test data are in a single data set)

Step 4 identifies indices of the columns that pertain to mean and standard deviation and stores it in the vector chosencols

Step 5 subsets the data with the vector chosencols

In step 6 we read both the subjects and activity information which are present in different files for training and test merging them into one file for subjects and one for activity

Step 7 generates the descriptive names of the activities

Step 8 adds activities and subjects as columns to the to the data set we created in the third step.

Step 9 groups the data by subject and activity, and calculating the mean for all the other variables.

Step 10 writes the data to a file.

