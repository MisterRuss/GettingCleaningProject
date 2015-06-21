---
title: "Code Book for SummarizedActivity.txt"
author: "Ray Russell"
date: "June 21, 2015"
output: html_document
---
This file describes the tidy data set produced by run_analysis.R as part of the Getting and Cleaning Data Course Project

This file was produced by running the run_analysis.R program against the data from the UCI HAR Dataset.  The goal of the
program is to perform the folloing steps on the UCI HAR data:

  1. Merge the training and the test sets to create one data set.
  2. Extract only the measurements on the mean and standard deviation for each measurement. 
  3. Use descriptive activity names to name the activities in the data set
  4. Appropriately label the data set with descriptive variable names. 
  5. Creates an independent tidy data set with the average of each variable for each activity and each subject.
  6. Writes out the tidy data set to the file SummarizedActivity.txt 
  
SummarizedActivity.txt is summarized by Subject and Activity.  The Subjects are individuals who participated in the original data gathering identified only by an integer identifier.  There were 30 participants.  The Activity field represents the 6 possible activities indentified in the research - WALKING_DOWNSTAIRS, WALKING_UPSTAIRS, LAYING, SITTING, STANDING and WALKING.  There are 180 rows in the SummarizedActivity.txt data set, one for each possible combination of the 30 Subjects and 6 Activities.

The SuSummarizedActivity.txt contains the following columns:

    Subject - Integer identifying the subject
    Activity - Activity descriptive text - WALKING_DOWNSTAIRS, WALKING_UPSTAIRS, LAYING, SITTING, STANDING or WALKING
    202-tBodyAccMag-std() - Numeric average standard deviation of the grouping
    215-tGravityAccMag-std() - Numeric average standard deviation of the grouping
    228-tBodyAccJerkMag-std() - Numeric average standard deviation of the grouping
    241-tBodyGyroMag-std() - Numeric average standard deviation of the grouping
    254-tBodyGyroJerkMag-std() - Numeric average standard deviation of the grouping
    504-fBodyAccMag-std()- Numeric average standard deviation of the grouping
    517-fBodyBodyAccJerkMag-std() - Numeric average standard deviation of the grouping
    530-fBodyBodyGyroMag-std() - Numeric average standard deviation of the grouping
    543-fBodyBodyGyroJerkMag-std() - Numeric average standard deviation of the grouping
    201-tBodyAccMag-mean() - Numeric average mean of the grouping
    214-tGravityAccMag-mean() - Numeric average mean of the grouping
    227-tBodyAccJerkMag-mean() - Numeric average mean of the grouping
    240-tBodyGyroMag-mean() - Numeric average mean of the grouping
    253-tBodyGyroJerkMag-mean() - Numeric average mean of the grouping
    503-fBodyAccMag-mean() - Numeric average mean of the grouping
    516-fBodyBodyAccJerkMag-mean() - Numeric average mean of the grouping
    529-fBodyBodyGyroMag-mean() - Numeric average mean of the grouping
    542-fBodyBodyGyroJerkMag-mean() - Numeric average mean of the grouping

Note that integer prefixes were added to the column names from the original features.txt data to establish unique naming, as there were duplicate column names in the source data.


