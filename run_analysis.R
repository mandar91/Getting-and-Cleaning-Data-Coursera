library(plyr)

#--------------------------## Task 1 ##-----------------------#
# Merges the training and the test sets to create one data set.
###############################################################################

## Step 1 ##
#Read the data and store it in given tables

train_x <- read.table("train/X_train.txt")
train_y <- read.table("train/y_train.txt")
train_subject <- read.table("train/subject_train.txt")

test_x <- read.table("test/X_test.txt")
test_y <- read.table("test/y_test.txt")

test_subject <- read.table("test/subject_test.txt")

## Step 2 ##
#Create new tables by merging them.

xdata <- rbind(train_x, test_x)


ydata <- rbind(train_y, test_y)


subject_data <- rbind(train_subject, test_subject)

#--------------------------## Task 2 ##-----------------------## 
#Extracts only the measurements on the mean and standard deviation for each measurement.
###############################################################################
# Step 1 read features in "feat"

feat <- read.table("features.txt")

# Extract columns names with mean() or std() 

mean_std_feat <- grep("-(mean|std)\\(\\)", feat[, 2])

# subsetting columns

xdata <- xdata[, mean_std_feat ]

#Change column names

names(xdata) <- feat[mean_std_feat, 2]

#--------------------------## Task 3 ##-----------------------##
# Use descriptive activity names to name the activities in the data set
###############################################################################

activity <- read.table("activity_labels.txt")

# update values with correct activity names
ydata[, 1] <- activity[ydata[, 1], 2]

# correct column name
names(ydata) <- "activity"

#--------------------------## Task 4 ##-----------------------## 
# Appropriately labels the data set with descriptive variable names.
###############################################################################

# Correct Naming conventions

names(subject_data) <- "subject"


# Binding the data
Data <- cbind(xdata, ydata, subject_data)

#--------------------------## Task 5 ##-----------------------## 
# From the data set in step 4, creates a second, independent tidy #data set with the average of each variable for each activity and 
#each subject
###############################################################################

data_avg <- ddply(Data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(data_avg, "Average_Data_upload file.txt", row.name=FALSE)