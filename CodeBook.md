# CodeBook.md

## Summary
This code book describes the data transformation from raw in the data/ directory using run\_anaysis.R.

## Transformation
The data transformation is performed by run\_analysis.R and is summarized as follows (ultimately resulting in two text files):
1. Combine raw training and test sets into a single data frame
      * data/test/X\_test.txt
      * data/test/y\_test.txt
      * data/test/subject\_test.txt
      * data/train/X\_train.txt
      * data/train/y\_train.txt
      * data/train/subject\_train.txt
2. Filter out all variables that are not a mean or standard deviation using variables names given in features.txt
3. Name the remaining variables in correspondence with the contents of features.txt
4. Replace the categorical numeric values of the Activity variable with strings found in activity\_labels.txt
5. Write the transformed data up to this point into a new file called cleaned.txt
6. Group the data by subject and activity and summarize each group's numerical data by mean.
7. Write result of Step-6 to cleaned\_reduced.txt

## Data
Variable | Description
--- | --- 
activity | Categorical value limited to: WALKING, WALKING\_UPSTAINRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING
participant | The subject generating the data. Ranges from 1 to 30. 
tBodyAcc-mean()-X | This and all descriptionless variables are described adequately by name 
tBodyAcc-mean()-Y |
tBodyAcc-mean()-Z | 
tBodyAcc-std()-X | 
tBodyAcc-std()-Y |
tBodyAcc-std()-Z |
tGravityAcc-mean()-X |
tGravityAcc-mean()-Y |
tGravityAcc-mean()-Z |
tGravityAcc-std()-X |
tGravityAcc-std()-Y |
tGravityAcc-std()-Z |
tBodyAccJerk-mean()-X |
tBodyAccJerk-mean()-Y |
tBodyAccJerk-mean()-Z |
tBodyAccJerk-std()-X |
tBodyAccJerk-std()-Y |
tBodyAccJerk-std()-Z |
tBodyGyro-mean()-X |
tBodyGyro-mean()-Y |
tBodyGyro-mean()-Z |
tBodyGyro-std()-X |
tBodyGyro-std()-Y |
tBodyGyro-std()-Z |
tBodyGyroJerk-mean()-X |
tBodyGyroJerk-mean()-Y |
tBodyGyroJerk-mean()-Z |
tBodyGyroJerk-std()-X |
tBodyGyroJerk-std()-Y |
tBodyGyroJerk-std()-Z |
tBodyAccMag-mean() |
tBodyAccMag-std() |
tGravityAccMag-mean() |
tGravityAccMag-std() |
tBodyAccJerkMag-mean() |
tBodyAccJerkMag-std() |
tBodyGyroMag-mean() |
tBodyGyroMag-std() |
tBodyGyroJerkMag-mean() |
tBodyGyroJerkMag-std() |
fBodyAcc-mean() |
fBodyAcc-mean() |
fBodyAcc-mean()-Z |
fBodyAcc-std()-X |
fBodyAcc-std()-Y |
fBodyAcc-std()-Z |
fBodyAccJerk-mean()-X |
fBodyAccJerk-mean()- |
fBodyAccJerk-mean()-Z |
fBodyAccJerk-std()-X |
fBodyAccJerk-std()-Y |
fBodyAccJerk-std()-Z |
fBodyGyro-mean()-X |
fBodyGyro-mean()- |
fBodyGyro-mean()-Z |
fBodyGyro-std()-X |
fBodyGyro-std()-Y |
fBodyGyro-std()-Z |
fBodyAccMag-mean() |
fBodyAccMag-std() |
fBodyBodyAccJerkMag-mean() |
fBodyBodyAccJerkMag-std() |
fBodyBodyGyroMag-mean() |
fBodyBodyGyroMag-std() |
fBodyBodyGyroJerkMag-mean() |
fBodyBodyGyroJerkMag-std() |
