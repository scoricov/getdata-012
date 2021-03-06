# Getting and Cleaning Data: Course Project

This repository contains the assignment for course project from Getting and Cleaning Data course at coursera.org, which is a part of the Data Science specialization.

## Summary

The analysis script 'run_analysis.R' does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Contents
- 'CodeBook.md': this code book provides a brief overview on the data set, files included, the variables, the work to be performed on the dataset and working of 'run_analysis.R' code to obtain the tidy dataset.
- 'run_analysis.R': the script which performs the analysis.
- 'action_subject_means.txt': the resulting tidy data set produced by 'run_analysis.R' script.


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
6. Load and view the tidy data set in R:

    ```R
    x <- read.table("action_subject_means.txt")
    x
    ```

##Pre-requisites

- Package 'dplyr' must be installed before running the script.
- This course project uses the "Human Activity Recognition Using Smartphones Dataset" which can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
