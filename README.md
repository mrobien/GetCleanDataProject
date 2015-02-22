# GetCleanDataProject
Course project on getting, cleaning data from Samsung Accelerometry

# README.md
#

This associated script (run_analysis.R) assumes that the following unpacked files are in the current working directory

activity_labels.txt   # file containing the mapping between the activity codes (1-6) and 
                      #  the descriptive activity name ("LAYING","SITTING",etc.

features.txt          # the file containing the text names of the variables for the columns in the main data files

and that there are directories train and test at this level, containing

train/subject_train.txt # the subject id for each of the rows in the corresponding data file
train/X_train.txt       # the Main data file for the training set
train/y_train.txt       # the activity code for each of the rows in the corresponding data file

test/subject_test.txt   # the subject id for each of the rows in the corresponding data file
test/X_test.txt         # the Main data file for the test set
test/y_test.txt         # the activity code for each of the rows in the corresponding data file

# 


References:

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
  A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
  21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
  ESANN 2013. Bruges, Belgium 24-26 April 2013.

2. Data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(downloaded Feb 9, 2015)
