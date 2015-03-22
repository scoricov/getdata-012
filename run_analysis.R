# run_analysis.R does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
# for each measurement.
# 3. Uses descriptive activity names to name the activities in the
# data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy
# data set with the average of each variable for each activity and each
# subject.


# Load dplyr
library(dplyr)

# Read columns and labels
col <- read.table("UCI HAR Dataset/features.txt")
col <- gsub("[()]","",col[, 2])
labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Read training data set, add subjects and activities, use descriptive
# activity names, labels the data set with descriptive variable names.
train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = col)
trainSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainAct <- read.table("UCI HAR Dataset/train/y_train.txt")
trainAct <- merge(labels, trainAct)
train <- mutate(train, subject = trainSubj[,1], activity = trainAct[,2])

# Read testing data set, add subjects and activities, use descriptive
# activity names, labels the data set with descriptive variable names.
test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = col)
testSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")
testAct <- read.table("UCI HAR Dataset/test/y_test.txt")
testAct <- merge(labels, testAct)
test <- mutate(test, subject = testSubj[,1], activity = testAct[,2])

# Merge the training and the test sets to create one data set,
# extract only the measurements on the mean and standard deviation for each
# measurement, create a second, independent tidy data set with the average
# of each variable for each activity and each subject.
meansByActSubj <-
    merge(train, test, all = TRUE) %>%
    select(activity,
           subject,
           ends_with(".mean"),
           ends_with(".mean.X"),
           ends_with(".mean.Y"),
           ends_with(".mean.Z"),
           contains(".std")) %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))

# Write the resulting tidy data set to a text file.
write.table(meansByActSubj, "action_subject_means.txt", row.name=FALSE)

