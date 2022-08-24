# Project_in_Getting_and_Cleaning_Data

After extracting the zip file from the project page, for the run_analysis.R to work properly, set the directory to the file "UCI HAR Dataset".

After running the run_analysis.R:

1. type in DataSet if want to see the data from X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_train and subject_test in a table.

2. type in DataSet 2 if want to see the data set with the average of each variable from DataSet for each activity and each subject.


In the run_analysis.R:

1. the data from the zip file have been readed into R by read.table. 
2. "dplyr" package has been used. 
3. The training, the test sets, the subject have been merged into one data set.
4. The columns which have name containing mean and std have been extracted out using select function.
5. The average of each variable for each activity and each subject have been computed using group_by and summarize functions.
