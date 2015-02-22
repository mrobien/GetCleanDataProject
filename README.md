# GetCleanDataProject
Course project on getting, cleaning data from Samsung Accelerometry

# README.md (best viewed in Raw mode)
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
The run_analysis.R program flow: 
  read the activity_labels.txt file which provides the descriptive form of the activity variables
  read the main data files (train file, test file, appended in that order)
  read the files containing the SubjectID for each of the rows in the train and test file
              append these together, in the same order as was done for the main data files
  read the files containing the coded Activity Type in the same manner
  read the file containing the column descriptions for the main data file
  now assign meaningful column names to the relevant files
  Assemble the overall file, now containing SubID and Activity Type columns along with the main numeric data
  Subset only the columns of interest (only those which are mean or std calculations)
  aggregate all data for a given level of SubID+Activity, and calculate column means for the accelerometer data
  label all columns appropriately with meaningful names (including MEAN_ prefix to denote that how/what these are dervied from)
  clean up column names so that they conform to syntactically valid R names 
  write output file 
  

References:

1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
  A Public Domain Dataset for Human Activity Recognition Using Smartphones. 
  21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, 
  ESANN 2013. Bruges, Belgium 24-26 April 2013.

2. Data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(downloaded Feb 9, 2015)
