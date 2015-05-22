## A full description is available at the site where the data was obtained: 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
## Here are the data for the project: 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##You should create one R script called run_analysis.R that does the following. 
## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names. 
## 5 From the data set in step 4, creates a second, independent tidy data set with the average 
##	of each variable for each activity and each subject.

    ## Read Test data into table
    subjectTest <- read.table(file = "UCI HAR Dataset/test/subject_test.txt")
    xTest <- read.table(file = "UCI HAR Dataset/test/X_test.txt")
    yTest <- read.table(file = "UCI HAR Dataset/test/y_test.txt")
    
    ## Read Train data into table
    subjectTrain <- read.table(file = "UCI HAR Dataset/train/subject_train.txt")
    xTrain <- read.table(file = "UCI HAR Dataset/train/X_train.txt")
    yTrain <- read.table(file = "UCI HAR Dataset/train/Y_train.txt")

    ## Read in features.txt as table
    feat <- read.table("UCI HAR Dataset/features.txt")
    
    ## Combine all Test data into Test dataframe 'dfTest'
    dfTest <- cbind(subjectTest, yTest, xTest)
    
    ## Combine all Train data into Train dataframe 'dfTrain'
    dfTrain <- cbind(subjectTrain, yTrain, xTrain)
    
    ## Combine both Test and Train dataframes into 'df'
    df <- rbind(dfTest, dfTrain)
    
    ## Label dataframe column based on README.txt and Features.txt description
    ## Rename Col 1 to subject
    ## Rename Col 2 to activity
    ## Rename Col 3 to 363 based on features.txt list
    names(df)[1] <- "subject"
    names(df)[2] <- "activity"
    names(df)[3:563] = as.character(feat[,2])
    
    ## Generate a subset of df to include "subject", "activity", "-mean()" and "-std()" columns  
    dfSubset <- cbind(df[,1:2], df[, grep("-mean()", colnames(df), fixed=TRUE)], df[, grep("-std()", colnames(df), fixed=TRUE)])
    
    ## Read in activity_labels.txt as table
    act <- read.table("UCI HAR Dataset/activity_labels.txt")
    
    ## Replace non descriptive integer with descriptive names based on activity_labels.txt
    for (i in 1:nrow(act)){ 
        dfSubset$activity[dfSubset$activity == i] <- as.character(act[i,2])
    }
    
    ## Load dplyr package; assuming the package has already been installed
    library(dplyr)
    
    ## tidy data set with the average of each variable for each activity and each subject
    ## using summarise_each() function
    dfTidy <- dfSubset %>% group_by(subject, activity) %>% summarise_each(funs(mean))
    
    ## Create a txt file for project submission
    write.table(dfTidy, file ="dfTidy.txt", row.names=FALSE)
