
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

The combined new tidy data set has the following 68 variables:

> names(newTidyAveragesData)
 [1] "subject"                                   
 [2] "activity"                                  
 [3] "timeBodyAccelerator-mean-X"                
 [4] "timeBodyAccelerator-mean-Y"                
 [5] "timeBodyAccelerator-mean-Z"                
 [6] "timeBodyAccelerator-std-X"                 
 [7] "timeBodyAccelerator-std-Y"                 
 [8] "timeBodyAccelerator-std-Z"                 
 [9] "timeGravityAccelerator-mean-X"             
[10] "timeGravityAccelerator-mean-Y"             
[11] "timeGravityAccelerator-mean-Z"             
[12] "timeGravityAccelerator-std-X"              
[13] "timeGravityAccelerator-std-Y"              
[14] "timeGravityAccelerator-std-Z"              
[15] "timeBodyAcceleratorJerk-mean-X"            
[16] "timeBodyAcceleratorJerk-mean-Y"            
[17] "timeBodyAcceleratorJerk-mean-Z"            
[18] "timeBodyAcceleratorJerk-std-X"             
[19] "timeBodyAcceleratorJerk-std-Y"             
[20] "timeBodyAcceleratorJerk-std-Z"             
[21] "timeBodyGyroscope-mean-X"                  
[22] "timeBodyGyroscope-mean-Y"                  
[23] "timeBodyGyroscope-mean-Z"                  
[24] "timeBodyGyroscope-std-X"                   
[25] "timeBodyGyroscope-std-Y"                   
[26] "timeBodyGyroscope-std-Z"                   
[27] "timeBodyGyroscopeJerk-mean-X"              
[28] "timeBodyGyroscopeJerk-mean-Y"              
[29] "timeBodyGyroscopeJerk-mean-Z"              
[30] "timeBodyGyroscopeJerk-std-X"               
[31] "timeBodyGyroscopeJerk-std-Y"               
[32] "timeBodyGyroscopeJerk-std-Z"               
[33] "timeBodyAcceleratorMagnitude-mean"         
[34] "timeBodyAcceleratorMagnitude-std"          
[35] "timeGravityAcceleratorMagnitude-mean"      
[36] "timeGravityAcceleratorMagnitude-std"       
[37] "timeBodyAcceleratorJerkMagnitude-mean"     
[38] "timeBodyAcceleratorJerkMagnitude-std"      
[39] "timeBodyGyroscopeMagnitude-mean"           
[40] "timeBodyGyroscopeMagnitude-std"            
[41] "timeBodyGyroscopeJerkMagnitude-mean"       
[42] "timeBodyGyroscopeJerkMagnitude-std"        
[43] "frequencyBodyAccelerator-mean-X"           
[44] "frequencyBodyAccelerator-mean-Y"           
[45] "frequencyBodyAccelerator-mean-Z"           
[46] "frequencyBodyAccelerator-std-X"            
[47] "frequencyBodyAccelerator-std-Y"            
[48] "frequencyBodyAccelerator-std-Z"            
[49] "frequencyBodyAcceleratorJerk-mean-X"       
[50] "frequencyBodyAcceleratorJerk-mean-Y"       
[51] "frequencyBodyAcceleratorJerk-mean-Z"       
[52] "frequencyBodyAcceleratorJerk-std-X"        
[53] "frequencyBodyAcceleratorJerk-std-Y"        
[54] "frequencyBodyAcceleratorJerk-std-Z"        
[55] "frequencyBodyGyroscope-mean-X"             
[56] "frequencyBodyGyroscope-mean-Y"             
[57] "frequencyBodyGyroscope-mean-Z"             
[58] "frequencyBodyGyroscope-std-X"              
[59] "frequencyBodyGyroscope-std-Y"              
[60] "frequencyBodyGyroscope-std-Z"              
[61] "frequencyBodyAcceleratorMagnitude-mean"    
[62] "frequencyBodyAcceleratorMagnitude-std"     
[63] "frequencyBodyAcceleratorJerkMagnitude-mean"
[64] "frequencyBodyAcceleratorJerkMagnitude-std" 
[65] "frequencyBodyGyroscopeMagnitude-mean"      
[66] "frequencyBodyGyroscopeMagnitude-std"       
[67] "frequencyBodyGyroscopeJerkMagnitude-mean"  
[68] "frequencyBodyGyroscopeJerkMagnitude-std"   
> 

