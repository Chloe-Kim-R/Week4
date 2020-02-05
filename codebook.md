  
  [CodeBook_tidy.txt]
   
 *Data source : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI% 20HAR%20Dataset.zip
  
1. Merge the training and test data set 
  -tr : training data from X_train.txt, 7352 obs. of 561 variables
  -test : test data set from X_test.txt, 2947 obs. of 561 variables
  -ft : feature names from features.txt, 561 obs. of 2 variables
  -total : merged data, 10299 obs. of 561 variables
  
2. Subject and Activity labels 
 - sub.total : Merged subject data of training and test from "subject_train.txt","subject_test.txt"
               10299 obs. of 561 variables
 - activity : Merged Activity data of training and test from "y_train.txt", "y_test.txt"
              10299 obs. of 561 variables

3. Extract only mean/sd values of each measurment in total data.frame
 - meansd :  10299 obs. of 79 variables
 
4. Appropriate labels for meansd data set 
 - tdf : subject ID and activity colume combined, 10299 obs. of 81 variables

5. Second data set mean value for each subject and each activity 
 - tidy : grouped by subject and activity, calculate mean of each variables, 180 obs. of 81 variables
 - "tidy.txt"" file created with tidy data set  

## Column variable and description in tidy.txt ##
 [1] ID : 1-30
 [2] Activity :   
    "Walk"      - WALKING
    "Walk_up"   - WALKING_UPSTAIRS
    "Walk_down" - WALKING_DOWNSTAIRS
    "Sit"       - SITTING 
    "Stand"     - STANDING
    "Lay"       - LAYING
[3-5]   tBodyAcc-mean-XYZ       
[6-8]   tBodyAcc-std-XYZ        
[9-11]  tGravityAcc-mean-XYZ    
[12-14] tGravityAcc-std-XYZ      
[15-17] tBodyAccJerk-mean-XYZ     
[18-20] tBodyAccJerk-std-XYZ    
[21-23] tBodyGyro-mean-XYZ      
[24-26] tBodyGyro-std-X         
[27-29] tBodyGyroJerk-mean-X     
[30-32] tBodyGyroJerk-std-X      
[33]    tBodyAccMag-mean         
[34]    tBodyAccMag-std          
[35]    tGravityAccMag-mean     
[36]    tGravityAccMag-std      
[37]    tBodyAccJerkMag-mean     
[38]    tBodyAccJerkMag-std     
[39]    tBodyGyroMag-mean        
[40]    tBodyGyroMag-std        
[41]    tBodyGyroJerkMag-mean    
[42]    tBodyGyroJerkMag-std    
[43-45] fBodyAcc-mean-XYZ       
[46-48] fBodyAcc-std-XYZ
[49-51] fBodyAcc-meanFreq-XYZ
[52-54] fBodyAccJerk-mean-XYZ
[55-57] fBodyAccJerk-std-XYZ
[58-60] fBodyAccJerk-meanFreq-XYZ
[61-63] fBodyGyro-mean-XYZ
[64-66] fBodyGyro-std-XYZ
[67-69] fBodyGyro-meanFreq-X
[70]    fBodyAccMag-mean
[71]    fBodyAccMag-std
[72]    fBodyAccMag-meanFreq
[73]    fBodyBodyAccJerkMag-mean
[74]    fBodyBodyAccJerkMag-std
[75]    fBodyBodyAccJerkMag-meanFreq
[76]    fBodyBodyGyroMag-mean
[77]    fBodyBodyGyroMag-std
[78]    fBodyBodyGyroMag-meanFreq
[79]    fBodyBodyGyroJerkMag-mean
[80]    fBodyBodyGyroJerkMag-std
[81]    fBodyBodyGyroJerkMag-meanFreq

Data collected from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
(tBodyAcc-XYZ and tGravityAcc-XYZ) 
 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
(fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.) 
- Note the 'f' to indicate frequency domain signals. 

These are used on the angle() variable:
(gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean)
   
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 
 mean: Mean value
 std: Standard deviation