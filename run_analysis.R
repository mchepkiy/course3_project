run_analysis <- function(){
    
    ## 1. settings
    ## 1.1. column names and activity names
    activity_names_path = "./activity_labels.txt"
    column_names_path = "./features.txt"
    
    ## 1.2. test data paths
    test_data_path = "./test/X_test.txt"
    test_subj_path = "./test/subject_test.txt"
    test_labels_path = "./test/y_test.txt"
    
    ## 1.3. training data paths
    train_data_path = "./train/X_train.txt"
    train_subj_path = "./train/subject_train.txt"
    train_labels_path = "./train/y_train.txt"
    
    ## 2. loading the data
    activity_names <- read.table(activity_names_path)
    column_names <- read.table(column_names_path)
    
    test_data <- read.table(test_data_path)
    test_subj <- read.table(test_subj_path)
    test_labels <- read.table(test_labels_path)
    
    train_data <- read.table(train_data_path)
    train_subj <- read.table(train_subj_path)
    train_labels <- read.table(train_labels_path)
    
    ## 3. Set names
    names(test_data) <- column_names$V2
    names(train_data) <- column_names$V2
    
    ## 3. Merge two datasets
    data_merged <- rbind(test_data, train_data)
    
    ## 4. Appending subject and activity before merging
    data_full <- cbind(rbind(test_labels, train_labels),
                       rbind(test_subj, train_subj),
                       data_merged)
    
    ## 5. Tudying the data
    ## 5.1 Set column names
    names(data_full)[1:2] <- c("ActivityID", "SubjectID")
    ## 5.2 Add activity name by ID
    data_full <- cbind(
                        data.frame(
                                ActivityName = activity_names[match(data_full$ActivityID, 
                                activity_names$V1), 2]
                                ), 
                        data_full)
    ## 5.3 Remove all the data columns except mean and std
    data_full <- data_full[, grepl(
        "mean\\(\\)|std\\(\\)|ActivityID|ActivityName|SubjectID", 
        names(tmp2))]
    data_full
}
    
