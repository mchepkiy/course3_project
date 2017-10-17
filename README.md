# Coursera Course 3 project - Codebook
## Project Description
Coursera Getting and Cleaning Data Course Project

## Study design and data processing

### Collection of the raw data
The dataset was unpacked from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and pun into the project's working directory. It's assumed that the paths are unchaged from the original dataset. Relative paths are stored in run_analysis.R

## Creating the tidy datafile

### Guide to create the tidy data file
1. Two datasets, "train" and "test" are merged into a single dataframe with rbind()
2. Subject ID and Activity ID are added with cbind()

### Cleaning of the data
1. Column names are set from "features" file with names(), ActivityID and SubjectID are added with string vector
2. Activity name is matched from "activity_labels" file
3. Only the first three columns (filtered by name) or the columns with "mean()" and "std()" in their names are left in the dataset

The data is then written to the "data_out.txt" with 
write.table(data_full, file = "./data_out.txt", row.name = FALSE)

## Description of the variables in the output file (data_full)
ActivityName - character, name of the activity from "activity_labels" file

ActivityID - numeric, ID of the activity from "test" and "train" datasets

SubjectID - numeric, ID of the subject from "test" and "train" datasets

tBodyAcc-mean()-X - numeric, data taken unchanged from initial dataset

tBodyAcc-mean()-Y - numeric, data taken unchanged from initial dataset

tBodyAcc-mean()-Z - numeric, data taken unchanged from initial dataset

tBodyAcc-std()-X - numeric, data taken unchanged from initial dataset

tBodyAcc-std()-Y - numeric, data taken unchanged from initial dataset

tBodyAcc-std()-Z - numeric, data taken unchanged from initial dataset

tGravityAcc-mean()-X - numeric, data taken unchanged from initial dataset

tGravityAcc-mean()-Y - numeric, data taken unchanged from initial dataset

tGravityAcc-mean()-Z - numeric, data taken unchanged from initial dataset

tGravityAcc-std()-X - numeric, data taken unchanged from initial dataset

tGravityAcc-std()-Y - numeric, data taken unchanged from initial dataset

tGravityAcc-std()-Z - numeric, data taken unchanged from initial dataset

tBodyAccJerk-mean()-X - numeric, data taken unchanged from initial dataset

tBodyAccJerk-mean()-Y - numeric, data taken unchanged from initial dataset

tBodyAccJerk-mean()-Z - numeric, data taken unchanged from initial dataset

tBodyAccJerk-std()-X - numeric, data taken unchanged from initial dataset

tBodyAccJerk-std()-Y - numeric, data taken unchanged from initial dataset

tBodyAccJerk-std()-Z - numeric, data taken unchanged from initial dataset

tBodyGyro-mean()-X - numeric, data taken unchanged from initial dataset

tBodyGyro-mean()-Y - numeric, data taken unchanged from initial dataset

tBodyGyro-mean()-Z - numeric, data taken unchanged from initial dataset

tBodyGyro-std()-X - numeric, data taken unchanged from initial dataset

tBodyGyro-std()-Y - numeric, data taken unchanged from initial dataset

tBodyGyro-std()-Z - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-mean()-X - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-mean()-Y - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-mean()-Z - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-std()-X - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-std()-Y - numeric, data taken unchanged from initial dataset

tBodyGyroJerk-std()-Z - numeric, data taken unchanged from initial dataset

tBodyAccMag-mean() - numeric, data taken unchanged from initial dataset

tBodyAccMag-std() - numeric, data taken unchanged from initial dataset

tGravityAccMag-mean() - numeric, data taken unchanged from initial dataset

tGravityAccMag-std() - numeric, data taken unchanged from initial dataset

tBodyAccJerkMag-mean() - numeric, data taken unchanged from initial dataset

tBodyAccJerkMag-std() - numeric, data taken unchanged from initial dataset

tBodyGyroMag-mean() - numeric, data taken unchanged from initial dataset

tBodyGyroMag-std() - numeric, data taken unchanged from initial dataset

tBodyGyroJerkMag-mean() - numeric, data taken unchanged from initial dataset

tBodyGyroJerkMag-std() - numeric, data taken unchanged from initial dataset

fBodyAcc-mean()-X - numeric, data taken unchanged from initial dataset

fBodyAcc-mean()-Y - numeric, data taken unchanged from initial dataset

fBodyAcc-mean()-Z - numeric, data taken unchanged from initial dataset

fBodyAcc-std()-X - numeric, data taken unchanged from initial dataset

fBodyAcc-std()-Y - numeric, data taken unchanged from initial dataset

fBodyAcc-std()-Z - numeric, data taken unchanged from initial dataset

fBodyAccJerk-mean()-X - numeric, data taken unchanged from initial dataset

fBodyAccJerk-mean()-Y - numeric, data taken unchanged from initial dataset

fBodyAccJerk-mean()-Z - numeric, data taken unchanged from initial dataset

fBodyAccJerk-std()-X - numeric, data taken unchanged from initial dataset

fBodyAccJerk-std()-Y - numeric, data taken unchanged from initial dataset

fBodyAccJerk-std()-Z - numeric, data taken unchanged from initial dataset

fBodyGyro-mean()-X - numeric, data taken unchanged from initial dataset

fBodyGyro-mean()-Y - numeric, data taken unchanged from initial dataset

fBodyGyro-mean()-Z - numeric, data taken unchanged from initial dataset

fBodyGyro-std()-X - numeric, data taken unchanged from initial dataset

fBodyGyro-std()-Y - numeric, data taken unchanged from initial dataset

fBodyGyro-std()-Z - numeric, data taken unchanged from initial dataset

fBodyAccMag-mean() - numeric, data taken unchanged from initial dataset

fBodyAccMag-std() - numeric, data taken unchanged from initial dataset

fBodyBodyAccJerkMag-mean() - numeric, data taken unchanged from initial dataset

fBodyBodyAccJerkMag-std() - numeric, data taken unchanged from initial dataset

fBodyBodyGyroMag-mean() - numeric, data taken unchanged from initial dataset

fBodyBodyGyroMag-std() - numeric, data taken unchanged from initial dataset

fBodyBodyGyroJerkMag-mean() - numeric, data taken unchanged from initial dataset

fBodyBodyGyroJerkMag-std() - numeric, data taken unchanged from initial dataset
