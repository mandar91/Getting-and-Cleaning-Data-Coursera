#Getting-and-Cleaning-Data-Coursera

-------------------------------------------------------------------------------------
	-------------------------------------------------------------------
##----------------Details about the Project---------------------------##

----------------------------------------------------------------------------------------
Objective:- Getting and Cleaning data by following all the principles of tidy data set
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
Task Assigned
----------------
----------------

You should create one R script called run_analysis.R that does the following. 

  1.  Merges the training and the test sets to create one data set.
  2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3.  Uses descriptive activity names to name the activities in the data set
  4.  Appropriately labels the data set with descriptive variable names.
  5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
------------------------------------------------------------------------------------------

Algorithm
----------
----------

1. Read the data and store it in given tables
2. Create new tables by merging them
3. Extract columns names with mean() or std()
4. Subset columns
5. Change column names
6. Update the values with correct activity names
7. Correct the Column names
8. Bind the data elements again
9. Perform ddply and get the average
10.Create a ".txt" file using the given command
--------------------------------------------------------------------------------------


List of variables used

1.train_x <- stores the data from "X_train.txt"
2.train_y <- stores the data from "y_train.txt"
3.train_subject <- stores the data from "subject_train.txt"
4.test_x <- stores the data from "X_test.txt"
5.test_y <- stores the data from "y_test.txt"
6.test_subject <- stores the data from "subject_test.txt"
7.xdata <- stores the data after binding train_x and test_x
8.ydata <- stores the data after binding train_y and test_y
9.subject_data <- stores the data after binding train_subject and test_subject
10. feat <- stores the data from "features.txt"
11. mean_std_feat <- stores the data with std() and mean() in their name
12. activity <- stores the data from "activity_labels.txt"
13. Data <- Stores the tidy data
14. data_avg <- stores the average value of the columns.

----------------------------------------------------------------------
12.






