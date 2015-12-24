#Read the column names for the data
featurenames <- read.csv("./features.txt",sep="",header=FALSE)

#Read activity names
activitynames <- read.csv("./activity_labels.txt", sep="", header=FALSE)

#Read Training and Test datasets (with descriptive column names) and merge them
trainset <- read.csv("./train/X_train.txt", sep="", header=FALSE, col.names = featurenames$V2)
testset <- read.csv("./test/X_test.txt", sep="", header=FALSE, col.names = featurenames$V2)
fullmergedset <- rbind(trainset, testset)

#Get only those column indices which are mean or standard deviation values
meancols <- grep("-mean()",featurenames$V2)
stdcols <- grep("-std()",featurenames$V2)
chosencols <- c(meancols, stdcols)
chosencols <- sort(chosencols)

#Subset only those columsn that we need from the full data set
mergedset <- fullmergedset[,chosencols]

#Read subject and activity labels from the training and test sets and merge them into a single set
trainsubjectsset <- read.csv("./train/subject_train.txt",sep="",header=FALSE)
testsubjectsset <- read.csv("./test/subject_test.txt",sep="",header=FALSE)
mergedsubjectsset <- rbind(trainsubjectsset, testsubjectsset)

trainactivityset <- read.csv("./train/y_train.txt",sep="",header=FALSE)
testactivityset <- read.csv("./test/y_test.txt",sep="",header=FALSE)
mergedactivityset <- rbind(trainactivitysset, testactivitysset)

#Add descriptive activity names to the activity data set
mergedactivitynameset <- merge(mergedactivityset, activitynames, by.x="V1", by.y="V1")

#Add subjects and activities as columns to the raw set we read.
mergedset$subject <- mergedsubjectsset$V1
mergedset$activity <- mergedactivitynameset$V2

#This merged set contains the full data for the chosen columns.

#Now create a new data set which is the mean of all the columns grouped by subject and activity

newdataset <- aggregate(mergedset[,1:79], list(subject = mergedset$subject, activity = mergedset$activity), mean)

write.table(newdataset,"newdataset.txt", row.name=FALSE)
