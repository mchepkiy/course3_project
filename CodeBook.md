# Coursera Course 3 project - Codebook
## Description of variables in run_analisys.R

## 1.1. column names and activity names
activity_names_path = path to "./activity_labels.txt"
column_names_path = path to "./features.txt"
   
## 1.2. test data paths
test_data_path = path to "./test/X_test.txt"
test_subj_path = path to "./test/subject_test.txt"
test_labels_path = path to "./test/y_test.txt"
    
## 1.3. training data paths
train_data_path = path to "./train/X_train.txt"
train_subj_path = path to "./train/subject_train.txt"
train_labels_path = path to "./train/y_train.txt"

activity_names - names of activities for matching
column_names - name of columns ("features")

test_data, test_subj, test_labels - test dataset parts
train_data, train_subj, train_labels - train dataset parts

data_merged - two datasets combined
data_full - final dataset
