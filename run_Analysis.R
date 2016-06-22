## The dataset should be grabbed from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## and then unzipped in the working directory for R
## The following steps are meant to load and reshape data for analysis
## and then print a processed dataset containing the desired data summaries (mean values)

## Step I - Get feature names and generate mean or std measures
feature.names <- read.table("UCI HAR Dataset/features.txt")
desired.features <- grep("std|mean", feature.names$V2)

## Step II - Get the train and test feature sets and subset only the desired features
train.features <- read.table("UCI HAR Dataset/train/X_train.txt")
desired.train.features <- train.features[,desired.features]
test.features <- read.table("UCI HAR Dataset/test/X_test.txt")
desired.test.features <- test.features[,desired.features]

## Step III - Combining the datasets into one using rbind
total.features <- rbind(desired.train.features, desired.test.features)

## Step IV - Attach column names to features
colnames(total.features) <- feature.names[desired.features, 2]

## Step V - Read and combine the train and test activity codes
train.activities <- read.table("UCI HAR Dataset/train/y_train.txt")
test.activities <- read.table("UCI HAR Dataset/test/y_test.txt")
total.activities <- rbind(train.activities, test.activities)

## Step VI - Read activity labels and associate them with their respective activity codes
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
total.activities$activity <- factor(total.activities$V1, levels = activity.labels$V1, labels = activity.labels$V2)

## Step VII - Get and merge the training and test subject IDs
train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
total.subjects <- rbind(train.subjects, test.subjects)

## Step VIII - Merge and name subjects and activity names using cbind
subjects.and.activities <- cbind(total.subjects, total.activities$activity)
colnames(subjects.and.activities) <- c("subject.id", "activity")

## Step IX - Combine with measures of interest to get the desired data frame
activity.frame <- cbind(subjects.and.activities, total.features)

## Step X - Using the dataset produced from steps I to IX, compute and report means of all measures, grouped by subject_id and by activity.
result.frame <- aggregate(activity.frame[,3:81], by = list(activity.frame$subject.id, activity.frame$activity), FUN = mean)
colnames(result.frame)[1:2] <- c("subject.id", "activity")
write.table(result.frame, file="DatasetHAR.txt", row.names = FALSE)
