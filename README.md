# getdata-012

## Summary

The analysis script 'run_analysis.R' does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## How to reproduce

In order to reproduce the analysis, follow these simple steps:

1. Clone the repository:
    ```bash
    git clone git@github.com:scoricov/getdata-012.git
    ```
2. Make directory "getdata-012" your current working directory.
3. Download and extract [raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into the current working directory. As a result, directory called "UCI HAR Dataset" will appear in the CWD.
4. Run the analysis:
    ```bash
    Rscript run_analysis.R
    ```
5. Resulting tidy data set will be written to the text file called 'action_subject_means.txt'.
6. Load and view the tidy dataset in R:
    ```R
    x <- read.table("action_subject_means.txt")
    x
    ```
