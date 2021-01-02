Data Dictionary - TidyData.txt
------------------------------

This Codebook lists and explains the 4 column variables in the tidied
data.  
 

#### subject

The subject conducting the activity.  
Numberings from 1 to 30 to represent the 30 subjects.  
 

#### activity

The 6 activities conducted by the subjects.  
WALKING: walking on flat surface  
WALKING\_UPSTAIRS: walking upstairs  
WALKING\_DOWNSTAIRS: walking downstairs  
SITTING: sitting  
STANDING: standing  
LAYING: laying  
 

#### variable

The 66 extracted variables, which correspond to mean and standard
deviation of the various measurements (detailed description below the
list):  
tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z

Follow the steps below to read the codes of the variables:  
1. t/f:  
The begining small letter represents time domain signals (‘t’) or
frequency domain signals (‘f’).  
2. BodyAcc/GravityAcc/BodyGyro:  
Next is the measuring device, which is either the accelerometer or the
gyroscope (‘BodyGyro’). Measures from the accelerometer are sub-devided
into two categories, the body accelration (‘BodyAcc’) and the gravity
acceleration (‘GravityAcc’).  
3. ""/Jerk/Mag/JergMag:  
‘Jerk’ refers to the Jerk signals, which were obtained from the body
linear acceleration and angular velocity derived in time. ‘Mag’ refers
to the magnitude of these three-dimensional signals calculated using the
Euclidean norm.  
4. mean()/std():  
This tells whether the variable is the mean or the standard deviation of
the measurement.  
5. X/Y/Z:  
This is used to denote 3-axial signals in the X, Y and Z directions.

For further information on the measurements, please refer to the
original info file given in the dataset.  
 

#### average

This is the average value for the corresponding subject, activity and
measurement from the first three columns of the same row.
