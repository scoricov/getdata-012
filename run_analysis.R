# sdfsd
# sdfsdfsdf

library(dplyr)

col <- read.table("UCI HAR Dataset/features.txt")
col <- gsub("[()]","",col[, 2])
labels <- read.table("UCI HAR Dataset/activity_labels.txt")

train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = col)
trainSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainAct <- read.table("UCI HAR Dataset/train/y_train.txt")
trainAct <- merge(labels, trainAct)
train <- mutate(train, subject = trainSubj[,1], activity = trainAct[,2])

test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = col)
testSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")
testAct <- read.table("UCI HAR Dataset/test/y_test.txt")
testAct <- merge(labels, testAct)
test <- mutate(test, subject = testSubj[,1], activity = testAct[,2])

meansByActSubj <-
    merge(train, test, all = TRUE) %>%
    select(activity, subject, contains("mean"), contains("std")) %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))

write.table(meansByActSubj, "action_subject_means.txt")


