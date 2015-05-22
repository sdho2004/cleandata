# Data Tidying CodeBook for Getting and Cleaning Data Project
## The following steps were used to tidy the raw data

* Read Test data into table
* Read Train data into table
* Read in features.txt as table
* Combine all Test data into Test dataframe 'dfTest'
* Combine all Train data into Train dataframe 'dfTrain'
* Combine both Test and Train dataframes into 'df'
* Label dataframe column based on README.txt and Features.txt description
* Rename Col 1 to subject
* Rename Col 2 to activity
* Rename Col from 3 to 363 based on features.txt list
* Generate a subset of df to include "subject", "activity", "-mean()" and "-std()" columns  
* Read in activity_labels.txt as table
* Replace non descriptive integer with descriptive names based on activity_labels.txt
* Load dplyr package; assuming the package has already been installed
* Tidy data set with the average of each variable for each activity and each subject using summarise_each() function
* Create a dfTidy.txt file for project submission

## The final dfTiday dataset consists of the following matrix 180 rows and 68 columns
## Columns are broken down by the following:
* subject                    
* activity                   
* tBodyAcc-mean()-X          
* tBodyAcc-mean()-Y          
* tBodyAcc-mean()-Z          
* tGravityAcc-mean()-X       
* tGravityAcc-mean()-Y       
* tGravityAcc-mean()-Z      
* tBodyAccJerk-mean()-X     
* tBodyAccJerk-mean()-Y     
* tBodyAccJerk-mean()-Z     
* tBodyGyro-mean()-X        
* tBodyGyro-mean()-Y        
* tBodyGyro-mean()-Z        
* tBodyGyroJerk-mean()-X    
* tBodyGyroJerk-mean()-Y    
* tBodyGyroJerk-mean()-Z    
* tBodyAccMag-mean()        
* tGravityAccMag-mean()     
* tBodyAccJerkMag-mean()    
* tBodyGyroMag-mean()       
* tBodyGyroJerkMag-mean()   
* fBodyAcc-mean()-X         
* fBodyAcc-mean()-Y         
* fBodyAcc-mean()-Z          
* fBodyAccJerk-mean()-X      
* fBodyAccJerk-mean()-Y      
* fBodyAccJerk-mean()-Z      
* fBodyGyro-mean()-X         
* fBodyGyro-mean()-Y         
* fBodyGyro-mean()-Z         
* fBodyAccMag-mean()         
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyGyroMag-mean()    
* fBodyBodyGyroJerkMag-mean()
* tBodyAcc-std()-X           
* tBodyAcc-std()-Y           
* tBodyAcc-std()-Z           
* tGravityAcc-std()-X        
* tGravityAcc-std()-Y        
* tGravityAcc-std()-Z        
* tBodyAccJerk-std()-X       
* tBodyAccJerk-std()-Y       
* tBodyAccJerk-std()-Z       
* tBodyGyro-std()-X          
* tBodyGyro-std()-Y          
* tBodyGyro-std()-Z          
* tBodyGyroJerk-std()-X      
* tBodyGyroJerk-std()-Y      
* tBodyGyroJerk-std()-Z      
* tBodyAccMag-std()          
* tGravityAccMag-std()       
* tBodyAccJerkMag-std()      
* tBodyGyroMag-std()         
* tBodyGyroJerkMag-std()     
* fBodyAcc-std()-X           
* fBodyAcc-std()-Y           
* fBodyAcc-std()-Z           
* fBodyAccJerk-std()-X       
* fBodyAccJerk-std()-Y       
* fBodyAccJerk-std()-Z       
* fBodyGyro-std()-X          
* fBodyGyro-std()-Y          
* fBodyGyro-std()-Z          
* fBodyAccMag-std()          
* fBodyBodyAccJerkMag-std()  
* fBodyBodyGyroMag-std()     
* fBodyBodyGyroJerkMag-std() 

