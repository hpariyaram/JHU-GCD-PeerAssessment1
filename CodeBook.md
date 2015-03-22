
# The CodeBook for the run_analysis.R R Script
## Introduction

The R script `run_analysis.R`performs the 5 steps described in the course project's definition.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Set Details

The data set is collected from the UCI Machine Learning library and the data set is named as "Human Activity Rocognition Using Smartphones Data Set"

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

## The R Script Procedural Steps

First the file is downloaded and the data set is extracted from the .zip compressed file.
Also install/upload the required R libraries.  The R script using ddply from the plyr R library.

Now read the data files into R from the extracted files in the data set directory.
The various features in features.txt and activities in the activities.txt are read into the R first.
Also the files training and test were read in.


Next step is to merge Training and Test Sets to create one data set.
After that extract the measurements on the mean and standard deviation for each measurement.


Then use descriptive activity names to name the activities in the data set and label the data set with 
descriptive variable names appropriately.  Next combine all the data sets to create a single complete data set.
After that creates a second, independent tidy data set with the average of each variable for each activity 
and each subject.  Now the new tidy data is ready to write into the "newTidyAveragesData.txt" data set file.

## Variables in the Code

The variables used in the R Script are as below:

* features <- read.table("./dataset/UCI HAR Dataset/features.txt") 
* activityType <- read.table("./dataset/UCI HAR Dataset/activity_labels.txt") 
* subjectTrain <- read.table("./dataset/UCI HAR Dataset/train/subject_train.txt")
* xTrain <- read.table("./dataset/UCI HAR Dataset/train/x_train.txt")
* yTrain <- read.table("./dataset/UCI HAR Dataset/train/y_train.txt")
* subjectTest <-  read.table("./dataset/UCI HAR Dataset/test/subject_test.txt")
* xTest <- read.table("./dataset/UCI HAR Dataset/test/X_test.txt")
* yTest <- read.table("./dataset/UCI HAR Dataset/test/y_test.txt")

As shown above these are the corresponding data set files.

Then xData, yData, and subjectData are the corresponding merged files of training and test observations together.

Couple of the next steps are used to clean the data and label them accordingly.

combinedData is the new combined set of observations.

## Results

The final set of data is prepared by using ddply function with a ColMeans().  The resulted tidy data is written into a new data set file "newTidyAveragesData.txt" using write.table() function.
