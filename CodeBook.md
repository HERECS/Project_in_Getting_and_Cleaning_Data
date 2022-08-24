By run_analysis.R, two different data set produced are stored as "DataSet" and "DataSet2"



DataSet contains data from X_train.tzt, y_train.txt, X_test.txt, y_lable.txt, 
and each of the obeservations(rows) have their identity(subject who performed the activity for each window sample) which 
have been added by subject data from subject_train.txt and subject_test.txt as "subject".

Also, all the integer data from y_train.txt, y_test have been transformed to their respectively activity and are stored as variable "activity".

All the variable names(particularly all the features) containing short form or redundancy("Acc","BodyBody","Gyro","Mag","tbody","^t","^f") 
have been transformed into their full names("Accelerometer","Body","Gyroscope","Magnitude","TimeBody","Times","Frequence")



Variable in DataSet:

 [1] "subject"                                           
 [2] "activity"                                          
 [3] "TimesBodyAccelerometer-mean()-X"                   
 [4] "TimesBodyAccelerometer-mean()-Y"                   
 [5] "TimesBodyAccelerometer-mean()-Z"                   
 [6] "TimesGravityAccelerometer-mean()-X"                
 [7] "TimesGravityAccelerometer-mean()-Y"                
 [8] "TimesGravityAccelerometer-mean()-Z"                
 [9] "TimesBodyAccelerometerJerk-mean()-X"               
[10] "TimesBodyAccelerometerJerk-mean()-Y"               
[11] "TimesBodyAccelerometerJerk-mean()-Z"               
[12] "TimesBodyGyroscope-mean()-X"                       
[13] "TimesBodyGyroscope-mean()-Y"                       
[14] "TimesBodyGyroscope-mean()-Z"                       
[15] "TimesBodyGyroscopeJerk-mean()-X"                   
[16] "TimesBodyGyroscopeJerk-mean()-Y"                   
[17] "TimesBodyGyroscopeJerk-mean()-Z"                   
[18] "TimesBodyAccelerometerMagnitide-mean()"            
[19] "TimesGravityAccelerometerMagnitide-mean()"         
[20] "TimesBodyAccelerometerJerkMagnitide-mean()"        
[21] "TimesBodyGyroscopeMagnitide-mean()"                
[22] "TimesBodyGyroscopeJerkMagnitide-mean()"            
[23] "FrequenceBodyAccelerometer-mean()-X"               
[24] "FrequenceBodyAccelerometer-mean()-Y"               
[25] "FrequenceBodyAccelerometer-mean()-Z"               
[26] "FrequenceBodyAccelerometer-meanFreq()-X"           
[27] "FrequenceBodyAccelerometer-meanFreq()-Y"           
[28] "FrequenceBodyAccelerometer-meanFreq()-Z"           
[29] "FrequenceBodyAccelerometerJerk-mean()-X"           
[30] "FrequenceBodyAccelerometerJerk-mean()-Y"           
[31] "FrequenceBodyAccelerometerJerk-mean()-Z"           
[32] "FrequenceBodyAccelerometerJerk-meanFreq()-X"       
[33] "FrequenceBodyAccelerometerJerk-meanFreq()-Y"       
[34] "FrequenceBodyAccelerometerJerk-meanFreq()-Z"       
[35] "FrequenceBodyGyroscope-mean()-X"                   
[36] "FrequenceBodyGyroscope-mean()-Y"                   
[37] "FrequenceBodyGyroscope-mean()-Z"                   
[38] "FrequenceBodyGyroscope-meanFreq()-X"               
[39] "FrequenceBodyGyroscope-meanFreq()-Y"               
[40] "FrequenceBodyGyroscope-meanFreq()-Z"               
[41] "FrequenceBodyAccelerometerMagnitide-mean()"        
[42] "FrequenceBodyAccelerometerMagnitide-meanFreq()"    
[43] "FrequenceBodyAccelerometerJerkMagnitide-mean()"    
[44] "FrequenceBodyAccelerometerJerkMagnitide-meanFreq()"
[45] "FrequenceBodyGyroscopeMagnitide-mean()"            
[46] "FrequenceBodyGyroscopeMagnitide-meanFreq()"        
[47] "FrequenceBodyGyroscopeJerkMagnitide-mean()"        
[48] "FrequenceBodyGyroscopeJerkMagnitide-meanFreq()"    
[49] "TimesBodyAccelerometer-std()-X"                    
[50] "TimesBodyAccelerometer-std()-Y"                    
[51] "TimesBodyAccelerometer-std()-Z"                    
[52] "TimesGravityAccelerometer-std()-X"                 
[53] "TimesGravityAccelerometer-std()-Y"                 
[54] "TimesGravityAccelerometer-std()-Z"                 
[55] "TimesBodyAccelerometerJerk-std()-X"                
[56] "TimesBodyAccelerometerJerk-std()-Y"                
[57] "TimesBodyAccelerometerJerk-std()-Z"                
[58] "TimesBodyGyroscope-std()-X"                        
[59] "TimesBodyGyroscope-std()-Y"                        
[60] "TimesBodyGyroscope-std()-Z"                        
[61] "TimesBodyGyroscopeJerk-std()-X"                    
[62] "TimesBodyGyroscopeJerk-std()-Y"                    
[63] "TimesBodyGyroscopeJerk-std()-Z"                    
[64] "TimesBodyAccelerometerMagnitide-std()"             
[65] "TimesGravityAccelerometerMagnitide-std()"          
[66] "TimesBodyAccelerometerJerkMagnitide-std()"         
[67] "TimesBodyGyroscopeMagnitide-std()"                 
[68] "TimesBodyGyroscopeJerkMagnitide-std()"             
[69] "FrequenceBodyAccelerometer-std()-X"                
[70] "FrequenceBodyAccelerometer-std()-Y"                
[71] "FrequenceBodyAccelerometer-std()-Z"                
[72] "FrequenceBodyAccelerometerJerk-std()-X"            
[73] "FrequenceBodyAccelerometerJerk-std()-Y"            
[74] "FrequenceBodyAccelerometerJerk-std()-Z"            
[75] "FrequenceBodyGyroscope-std()-X"                    
[76] "FrequenceBodyGyroscope-std()-Y"                    
[77] "FrequenceBodyGyroscope-std()-Z"                    
[78] "FrequenceBodyAccelerometerMagnitide-std()"         
[79] "FrequenceBodyAccelerometerJerkMagnitide-std()"     
[80] "FrequenceBodyGyroscopeMagnitide-std()"             
[81] "FrequenceBodyGyroscopeJerkMagnitide-std()"         




DataSet2 is the data set with the average of each variable from DataSet for each activity and each subject.
It has the same variable names as DataSet.

DataSet2 is intrepreted as follow:
0.222 from 1st row and 3rd column from DataSet2 is the average of `TimesBodyAccelerometerJerk-mean()-X` for subject '1' and activity 'LAYING'
