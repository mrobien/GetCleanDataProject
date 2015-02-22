CodeBook.md	created 2/21/2015 by Mark Robien. See README.md for data source and reference information
===========
BEST VIEWED IN RAW MODE

"SubID"
	Subject ID 	(numeric) 
			valid are 1 to 30, inclusive
----
"Activity"
	Activity	(character) 
			valid are "LAYING","SITTING","STANDING",
			          "WALKING", "WALKING DOWNSTAIRS", "WALKING UPSTAIRS"
----
Note - for the following, all are the (arithmetic) MEAN for 
       all observations with the value of SubID" "Activity" combination specified on the same row as the value
       all have the prefix "MEAN_" to indicate this
       the remainder of the variable names are constucted
         "t" or "f"               - (t)ime or (f)requency domain data
	 "Body" or "Gravity"      - indicating calculated Body or Gravity signal
         "Acc" or "Gyro"          - indicating calculated linear acceleration (Acc) or angular velocity (Gyro) signal
         "Jerk"                   - indicating calculated (derivatives) of the linear accel (AccJerk) or angular velocity (GyroJerk)
         (optional) "Mag"         - indicating that a non-axial Euclidean norm is calculated 
         "_mean" or "_std"        - indicating either mean or standard deviation is reported
         (optional)"_X","_Y',"_Z" - indicating the calculated axial component which is reported

"MEAN_tBodyAcc_mean_X"
"MEAN_tBodyAcc_mean_Y"
"MEAN_tBodyAcc_mean_Z"
"MEAN_tBodyAcc_std_X"
"MEAN_tBodyAcc_std_Y"
"MEAN_tBodyAcc_std_Z"
"MEAN_tGravityAcc_mean_X"
"MEAN_tGravityAcc_mean_Y"
"MEAN_tGravityAcc_mean_Z"
"MEAN_tGravityAcc_std_X"
"MEAN_tGravityAcc_std_Y"
"MEAN_tGravityAcc_std_Z"
"MEAN_tBodyAccJerk_mean_X"
"MEAN_tBodyAccJerk_mean_Y"
"MEAN_tBodyAccJerk_mean_Z"
"MEAN_tBodyAccJerk_std_X"
"MEAN_tBodyAccJerk_std_Y"
"MEAN_tBodyAccJerk_std_Z"
"MEAN_tBodyGyro_mean_X"
"MEAN_tBodyGyro_mean_Y"
"MEAN_tBodyGyro_mean_Z"
"MEAN_tBodyGyro_std_X"
"MEAN_tBodyGyro_std_Y"
"MEAN_tBodyGyro_std_Z"
"MEAN_tBodyGyroJerk_mean_X"
"MEAN_tBodyGyroJerk_mean_Y"
"MEAN_tBodyGyroJerk_mean_Z"
"MEAN_tBodyGyroJerk_std_X"
"MEAN_tBodyGyroJerk_std_Y"
"MEAN_tBodyGyroJerk_std_Z"
"MEAN_tBodyAccMag_mean"
"MEAN_tBodyAccMag_std"
"MEAN_tGravityAccMag_mean"
"MEAN_tGravityAccMag_std"
"MEAN_tBodyAccJerkMag_mean"
"MEAN_tBodyAccJerkMag_std"
"MEAN_tBodyGyroMag_mean"
"MEAN_tBodyGyroMag_std"
"MEAN_tBodyGyroJerkMag_mean"
"MEAN_tBodyGyroJerkMag_std"
"MEAN_fBodyAcc_mean_X"
"MEAN_fBodyAcc_mean_Y"
"MEAN_fBodyAcc_mean_Z"
"MEAN_fBodyAcc_std_X"
"MEAN_fBodyAcc_std_Y"
"MEAN_fBodyAcc_std_Z"
"MEAN_fBodyAccJerk_mean_X"
"MEAN_fBodyAccJerk_mean_Y"
"MEAN_fBodyAccJerk_mean_Z"
"MEAN_fBodyAccJerk_std_X"
"MEAN_fBodyAccJerk_std_Y"
"MEAN_fBodyAccJerk_std_Z"
"MEAN_fBodyGyro_mean_X"
"MEAN_fBodyGyro_mean_Y"
"MEAN_fBodyGyro_mean_Z"
"MEAN_fBodyGyro_std_X"
"MEAN_fBodyGyro_std_Y"
"MEAN_fBodyGyro_std_Z"
"MEAN_fBodyAccMag_mean"
"MEAN_fBodyAccMag_std"
"MEAN_fBodyBodyAccJerkMag_mean"
"MEAN_fBodyBodyAccJerkMag_std"
"MEAN_fBodyBodyGyroMag_mean"
"MEAN_fBodyBodyGyroMag_std"
"MEAN_fBodyBodyGyroJerkMag_mean"
"MEAN_fBodyBodyGyroJerkMag_std"
