---
title: "Getting and Cleaning Data Project"
author: "Ray Russell"
date: "June 21, 2015"
output: html_document
---

README.md - Readme file for the Getting and Cleaning Data Project

All the transformations in this project are included in the R program file run_analysis.R

This program performs the following steps:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. Creates an independent tidy data set with the average of each variable for each activity and each subject.
  6. Writes out the tidy data set to the file SummarizedActivity.txt in the working directory

Prerequisites

  1. Download and unzip the data from:

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

  2. Start RStudio and set the working directory for the R session to the UCI HAR Dataset directory 
  
Running the program

  1. From within RStudio, open and run run_analysis.R
  
  2. The console will show the installation of the dplyr package
  
  3. The console will show each file from the UCI HAR dataset being processed
  
      ./test/X_test.txt
      ./test/y_test.txt
      ./train/X_train.txt
      ./train/y_train.txt
      ./features.txt
      ./test/subject_test.txt
      ./train/subject_train.txt
  
  4. The console will then display a printed summary of the summarized data
  
  5. The program will then write the output to the file SummarizedActivity.txt in the working directory 


