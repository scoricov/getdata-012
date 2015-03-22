# Code Book: Tidy UCI HAR Dataset

This codebook describes the tidy dataset obtained from UCI HAR Dataset according to the task in course project "Getting and Cleaning Data".


## Synopsis

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


## Description

Each row contains summary of averages (mean() function), grouped by activity and subject. Features are normalized and bounded within [-1,1].

For each record it is provided:
- Activity and subject being observed.
- Averages of feature of time and frequency domain variables for each mean and standard deviation grouped by activity and each subject.


## Files

The dataset includes the following files:
- 'action_subject_means.txt': Contains tidy data set with the average of each variable for each activity and each subject.


## Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc.XYZ and tGyro.XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.XYZ and tBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.XYZ, fBodyAccJerk.XYZ, fBodyGyro.XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc.XYZ
- tGravityAcc.XYZ
- tBodyAccJerk.XYZ
- tBodyGyro.XYZ
- tBodyGyroJerk.XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc.XYZ
- fBodyAccJerk.XYZ
- fBodyGyro.XYZ
- fBodyAccMag
- fBodyBodyAccJerkMag
- fBodyBodyGyroMag
- fBodyBodyGyroJerkMag

The set of variables that were estimated from these signals are:

- mean: Mean value
- std:  Standard deviation

File 'action_subject_means.txt' contains the following variables:

1. "activity": character enumeration of "WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING". Describes the human activity being observed.
2. "subject": int, identifies the subject who performed the activity. Its range is from 1 to 30.
3. "tBodyAccMag.mean": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
4. "tGravityAccMag.mean": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
5. "tBodyAccJerkMag.mean": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
6. "tBodyGyroMag.mean": int, radians/second. Time domain signal. Average value for each activity and subject.
7. "tBodyGyroJerkMag.mean": int, radians/second. Time domain signal. Average value for each activity and subject.
8. "fBodyAccMag.mean": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
9. "fBodyBodyAccJerkMag.mean": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
10. "fBodyBodyGyroMag.mean": int, radians/second. Frequency domain signal. Average value for each activity and subject.
11. "fBodyBodyGyroJerkMag.mean": int, radians/second. Frequency domain signal. Average value for each activity and subject.
12. "tBodyAcc.mean.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
13. "tGravityAcc.mean.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
14. "tBodyAccJerk.mean.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
15. "tBodyGyro.mean.X": int, radians/second. Time domain signal. Average value for each activity and subject.
16. "tBodyGyroJerk.mean.X": int, radians/second. Time domain signal. Average value for each activity and subject.
17. "fBodyAcc.mean.X": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
18. "fBodyAccJerk.mean.X": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
19. "fBodyGyro.mean.X": int, radians/second. Frequency domain signal. Average value for each activity and subject.
20. "tBodyAcc.mean.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
21. "tGravityAcc.mean.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
22. "tBodyAccJerk.mean.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
23. "tBodyGyro.mean.Y": int, radians/second. Time domain signal. Average value for each activity and subject.
24. "tBodyGyroJerk.mean.Y": int, radians/second. Time domain signal. Average value for each activity and subject.
25. "fBodyAcc.mean.Y": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
26. "fBodyAccJerk.mean.Y": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
27. "fBodyGyro.mean.Y": int, radians/second. Frequency domain signal. Average value for each activity and subject.
28. "tBodyAcc.mean.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
29. "tGravityAcc.mean.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
30. "tBodyAccJerk.mean.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
31. "tBodyGyro.mean.Z": int, radians/second. Time domain signal. Average value for each activity and subject.
32. "tBodyGyroJerk.mean.Z": int, radians/second. Time domain signal. Average value for each activity and subject.
33. "fBodyAcc.mean.Z": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
34. "fBodyAccJerk.mean.Z": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
35. "fBodyGyro.mean.Z": int, radians/second. Frequency domain signal. Average value for each activity and subject.
36. "tBodyAcc.std.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
37. "tBodyAcc.std.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
38. "tBodyAcc.std.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
39. "tGravityAcc.std.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
40. "tGravityAcc.std.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
41. "tGravityAcc.std.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
42. "tBodyAccJerk.std.X": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
43. "tBodyAccJerk.std.Y": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
44. "tBodyAccJerk.std.Z": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
45. "tBodyGyro.std.X": int, radians/second. Time domain signal. Average value for each activity and subject.
46. "tBodyGyro.std.Y": int, radians/second. Time domain signal. Average value for each activity and subject.
47. "tBodyGyro.std.Z": int, radians/second. Time domain signal. Average value for each activity and subject.
48. "tBodyGyroJerk.std.X": int, radians/second. Time domain signal. Average value for each activity and subject.
49. "tBodyGyroJerk.std.Y": int, radians/second. Time domain signal. Average value for each activity and subject.
50. "tBodyGyroJerk.std.Z": int, radians/second. Time domain signal. Average value for each activity and subject.
51. "tBodyAccMag.std": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
52. "tGravityAccMag.std": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
53. "tBodyAccJerkMag.std": int, standard gravity units 'g'. Time domain signal. Average value for each activity and subject.
54. "tBodyGyroMag.std": int, radians/second. Time domain signal. Average value for each activity and subject.
55. "tBodyGyroJerkMag.std": int, radians/second. Time domain signal. Average value for each activity and subject.
56. "fBodyAcc.std.X": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
57. "fBodyAcc.std.Y": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
58. "fBodyAcc.std.Z": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
59. "fBodyAccJerk.std.X": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
60. "fBodyAccJerk.std.Y": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
61. "fBodyAccJerk.std.Z": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
62. "fBodyGyro.std.X": int, radians/second. Frequency domain signal. Average value for each activity and subject.
63. "fBodyGyro.std.Y": int, radians/second. Frequency domain signal. Average value for each activity and subject.
64. "fBodyGyro.std.Z": int, radians/second. Frequency domain signal. Average value for each activity and subject.
65. "fBodyAccMag.std": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
66. "fBodyBodyAccJerkMag.std": int, standard gravity units 'g'. Frequency domain signal. Average value for each activity and subject.
67. "fBodyBodyGyroMag.std": int, radians/second. Frequency domain signal. Average value for each activity and subject.
68. "fBodyBodyGyroJerkMag.std": int, radians/second. Frequency domain signal. Average value for each activity and subject.
