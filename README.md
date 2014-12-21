# Data Science Specialization

## Getting and Cleaning Data

### Description

This repository is created for a purpose of resolving a task of course project from: Coursera Data Science Specialization - Getting and cleaning data.

Within repository there are three files:

  * [a relative link](README.md) - Short desctription of the project and guide how to run the process,
  * [a relative link](CodeBook.md) - Detailed description about the output of the process
  * [a relative link](run_analysis.R) - R script, which contains step by step cleaning data process

### Tasks

You should create one R script called run_analysis.R that does the following. 
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Dependecies

The _run_analysis.R_ uses this libraries:

  * data.table
  * plyr
  * http

please make sure you have them installed before runining the script

### How to run my code?

Follow simple path:
  1. Create a new directory which will be used for whole process,
  2. Download _run_analysis.R_ and save it to previous created directory,
  3. Download and unzip dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. to directory which you've created in first step.
  4. Run _run_analysis.R_ script and wait for output file, which will be _tidy_data.csv_
