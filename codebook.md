## Code Book

## Data Description and Original Ownerships
The description and details for the data used in this project can be accessed from the README.txt at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  

## Data Tidying
The data provided in this original project are tidied into a principal research dataset of interest here, contained in the data frame "activity.frame", in the run_analysis.R script provided here.

The "activity.frame" data frame is produced by performing the following transformations:

1. Combine data from the original training and test datasets into one dataset.
2. Extract only those features from the original dataset that are a mean or standard deviation measure (mean or std in feature name).
2. Add subject ids (numbers 1-30) to the single data frame.
3. Add activities, by name, to the single data frame.

## Clean Data Columns

The resulting data frame has 81 columns:
<pre>
1 subject.id : The subject ID, an integer in the range 1:30
2 activity : The activity performed by the subject
3 tBodyAcc-mean()-X
4 tBodyAcc-mean()-Y
5 tBodyAcc-mean()-Z
6 tBodyAcc-std()-X
7 tBodyAcc-std()-Y
8 tBodyAcc-std()-Z
9 tGravityAcc-mean()-X
10 tGravityAcc-mean()-Y
11 tGravityAcc-mean()-Z
12 tGravityAcc-std()-X
13 tGravityAcc-std()-Y
14 tGravityAcc-std()-Z
15 tBodyAccJerk-mean()-X
16 tBodyAccJerk-mean()-Y
17 tBodyAccJerk-mean()-Z
18 tBodyAccJerk-std()-X
19 tBodyAccJerk-std()-Y
20 tBodyAccJerk-std()-Z
21 tBodyGyro-mean()-X
22 tBodyGyro-mean()-Y
23 tBodyGyro-mean()-Z
24 tBodyGyro-std()-X
25 tBodyGyro-std()-Y
26 tBodyGyro-std()-Z
27 tBodyGyroJerk-mean()-X
28 tBodyGyroJerk-mean()-Y
29 tBodyGyroJerk-mean()-Z
30 tBodyGyroJerk-std()-X
31 tBodyGyroJerk-std()-Y
32 tBodyGyroJerk-std()-Z
33 tBodyAccMag-mean()
34 tBodyAccMag-std()
35 tGravityAccMag-mean()
36 tGravityAccMag-std()
37 tBodyAccJerkMag-mean()
38 tBodyAccJerkMag-std()
39 tBodyGyroMag-mean()
40 tBodyGyroMag-std()
41 tBodyGyroJerkMag-mean()
42 tBodyGyroJerkMag-std()
43 fBodyAcc-mean()-X
44 fBodyAcc-mean()-Y
45 fBodyAcc-mean()-Z
46 fBodyAcc-std()-X
47 fBodyAcc-std()-Y
48 fBodyAcc-std()-Z
49 fBodyAcc-meanFreq()-X
50 fBodyAcc-meanFreq()-Y
51 fBodyAcc-meanFreq()-Z
52 fBodyAccJerk-mean()-X
53 fBodyAccJerk-mean()-Y
54 fBodyAccJerk-mean()-Z
55 fBodyAccJerk-std()-X
56 fBodyAccJerk-std()-Y
57 fBodyAccJerk-std()-Z
58 fBodyAccJerk-meanFreq()-X
59 fBodyAccJerk-meanFreq()-Y
60 fBodyAccJerk-meanFreq()-Z
61 fBodyGyro-mean()-X
62 fBodyGyro-mean()-Y
63 fBodyGyro-mean()-Z
64 fBodyGyro-std()-X
65 fBodyGyro-std()-Y
66 fBodyGyro-std()-Z
67 fBodyGyro-meanFreq()-X
68 fBodyGyro-meanFreq()-Y
69 fBodyGyro-meanFreq()-Z
70 fBodyAccMag-mean()
71 fBodyAccMag-std()
72 fBodyAccMag-meanFreq()
73 fBodyBodyAccJerkMag-mean()
74 fBodyBodyAccJerkMag-std()
75 fBodyBodyAccJerkMag-meanFreq()
76 fBodyBodyGyroMag-mean()
77 fBodyBodyGyroMag-std()
78 fBodyBodyGyroMag-meanFreq()
79 fBodyBodyGyroJerkMag-mean()
80 fBodyBodyGyroJerkMag-std()
81 fBodyBodyGyroJerkMag-meanFreq()
</pre>

## Computed result
The result, produced in the frame "result.frame" and written to the file "DatasetHAR.txt" (tab delimited file), containing all uniquely occuring combination of subject id and activity (columns 1 and 2), together with the mean of each other measure for that group (columns 3 through 81).

## p/s Note that due to the sheer number of columns (81), mean data would require 2 lines of text to be shown completedly for all 30 subjects
