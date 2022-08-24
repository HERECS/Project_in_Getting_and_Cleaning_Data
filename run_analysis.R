###Reading Data into R

X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")


###load package used
library(dplyr)



###Merges the training and the test sets to create one data set.

#changing the variable name of X_train
colnames(X_train) <- features[[2]]

#adding y_train into X_train
TrainSet <- cbind(activity_labels=y_train[[1]],X_train)

#changing the variable name of X_test
colnames(X_test) <- features[[2]]

#adding y_test into X_test
TestSet <- cbind(activity_labels=y_test[[1]],X_test)

#The desire data set of "Merges the training..."
DataSet <- rbind(TrainSet,TestSet)



###Extracts only the measurements on the mean and standard deviation
###for each measurement.

#exclude whichever containing angle
DataSet <- select(DataSet,activity_labels, contains("mean"),contains("std"), -contains("angle"))



###Uses descriptive activity names to name the activities 
###in the data set
DataSet$activity_labels <- activity_labels[DataSet$activity_labels,2]



###Appropriately labels the data set with descriptive variable names.

#Rename variable activity_labels
names(DataSet)[1] <- "activity"

#Rename other variables containing short form of "Acc","Gyro",...

names(DataSet) <- gsub("Acc","Accelerometer",names(DataSet))
names(DataSet) <- gsub("BodyBody","Body",names(DataSet))
names(DataSet) <- gsub("Gyro","Gyroscope",names(DataSet))
names(DataSet) <- gsub("Mag","Magnitude",names(DataSet))
names(DataSet) <- gsub("tbody","TimeBody",names(DataSet))

#Rename variables with '^'

names(DataSet) <- gsub("^t","Times",names(DataSet))
names(DataSet) <- gsub("^f","Frequence",names(DataSet))



###From the data set in step 4, creates a second, independent 
###tidy data set with the average of each variable for each 
###activity and each subject.

#bind subject into data set
subject <- c(subject_train[[1]],subject_test[[1]])
DataSet <- cbind(subject=subject,DataSet)

#group data set
GroupedDataSet <- group_by(DataSet, subject, activity)

#Creating the desire data set
DataSet2 <- summarise(GroupedDataSet,across(where(is.numeric),~mean(.x, na.rm=TRUE)))



