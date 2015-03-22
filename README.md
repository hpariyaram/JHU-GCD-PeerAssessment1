# Getting and Cleaning Data - Course Project 1 - Preparing Tidy Data

## Overview

The GitHub repository has the R scripts and details to convert a set of observations collected to a tidy data set to be used.  This is a project that demonstrates getting and cleaing data (a course project for 'Getting and Cleaning Data' Data Science course).

The data set used for this project is available at the web space: [Getting and Cleaning Data - Course Project 1 - Data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

The details of the observation data set can be found at the [Data set details](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data Set Details

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The data set is collected from the UCI Machine Learning library and the data set is named as "Human Activity Rocognition Using Smartphones Data Set"

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 


## Cleaning the Data Set Procedures

The procedure to clean the data to create a tidy data set is captured in an R Script (run_analysis.R).  

The R script will read in the data from various observation files and do the following steps to create a new tidy data set.  The new data set is stored in a file named "newTidyAveragesData.txt"

The procedure to create the new tidy data set is a below:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The R script and the resulted tiny data set are stored in this GitHub repository.
