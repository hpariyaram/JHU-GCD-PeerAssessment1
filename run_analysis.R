
# install/upload the required R library 
library(plyr)
library(dplyr)

# Create a directory to store the data set; and download the file from the web
if(!file.exists("./dataset")){
	dir.create("./dataset")
}


fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./dataset/Dataset.zip")) {
	download.file(fileUrl,destfile="./dataset/Dataset.zip")
}

unzip(zipfile="./dataset/Dataset.zip",exdir="./dataset")

# Read the data files into R
features <- read.table("./dataset/UCI HAR Dataset/features.txt") 
activityType <- read.table("./dataset/UCI HAR Dataset/activity_labels.txt") 
subjectTrain <- read.table("./dataset/UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("./dataset/UCI HAR Dataset/train/x_train.txt")
yTrain <- read.table("./dataset/UCI HAR Dataset/train/y_train.txt")
subjectTest <-  read.table("./dataset/UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("./dataset/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./dataset/UCI HAR Dataset/test/y_test.txt")

# Merge Training and Test Sets to create one data set
xData <- rbind(xTrain, xTest)
yData <- rbind(yTrain, yTest)
subjectData <- rbind(subjectTrain, subjectTest)


# Extract the measurements on the mean and standard deviation for each measurement
meanAndStandardFeatures <- grep("-(mean|std)\\(\\)", features[, 2])
xData <- xData[, meanAndStandardFeatures]
names(xData) <- features[meanAndStandardFeatures, 2]

# Use descriptive activity names to name the activities in the data set
# Update activity names for the values
yData[, 1] <- activityType[yData[, 1], 2] 
names(yData) <- "activity"

# Label the data set with descriptive variable names appropriately
names(subjectData) <- "subject"

# Combine all the data sets into one complete data set
combinedData <- cbind(xData, yData, subjectData)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject
# 66 <- 68 columns but last two (activity & subject)
newTidyAveragesData <- ddply(combinedData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(newTidyAveragesData, "newTidyAveragesData.txt", row.name=FALSE)


