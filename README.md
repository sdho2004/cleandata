# This is a project for Getting and Cleaning Data Class 
## This README file will describe how to get the data and how to tidy it

### First, download the following zip file onto your R working directory:
### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Second, unzip the file within your R working directory:
### The directory should look something like this:
### ***~/working directory/UCI HAR Dataset/***

### Third, You will then download run_analysis.R and CodeBook.md onto your R working directory
### The run_analysis.R script will convert raw data into tidy data using the steps provided in CodeBook.md
### Requirements to run the script - R, R Studio, and dplyr package

The script will basically use the following required steps:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent  tidy data set with the average of each variable for each activity and each subject.


