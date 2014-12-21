## Coursera: Data Science Specialization
## Module: Getting and Cleaning Data
## Project: Peer Assessments
## Author: Marcin Wiśniowski

##
# Tasks
##
# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measuremen
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the
#    average of each variable for each activity and each subject
##

##
# setup environment
##

dataset_dir <- "UCI HAR Dataset"
output_file <- "tidy_data.csv"

# Define infut file paths

input_train_x_file         <- paste(dataset_dir, "train", "X_train.txt", sep="/")
input_train_y_file         <- paste(dataset_dir, "train", "y_train.txt", sep="/")
input_train_subject_file   <- paste(dataset_dir, "train", "subject_train.txt", sep="/")

input_test_x_file          <- paste(dataset_dir, "test", "X_test.txt", sep="/")
input_test_y_file          <- paste(dataset_dir, "test", "y_test.txt", sep="/")
input_test_subject_file    <- paste(dataset_dir, "test", "subject_test.txt", sep="/")

input_labels_features_file <- paste(dataset_dir, "features.txt", sep="/")
input_labels_activity_file <- paste(dataset_dir, "activity_labels.txt", sep="/")

# Check if required objects are avalible
if ( !file.exists( dataset_dir ) ) {
    stop("Dataset directory is missing! Please put it to the current working directory")
} else {
    required.files <- c( input_train_x_file, input_train_y_file, input_train_subject_file,
        input_test_x_file, input_test_y_file, input_test_subject_file,
        input_labels_features_file, input_labels_activity_file )
    message("Checking avalibility of dataset files")
    for ( data_file in required.files ) {
        if ( !file.exists(data_file) ) {
            stop( paste("Input file not found: ", data_file) )
        }
    }
    message("OK")
}

# 1. Read the dataset
data.x       <- rbind( read.table(input_train_x_file), read.table(input_test_x_file) )
data.y       <- rbind( read.table(input_train_y_file), read.table(input_test_y_file) )
data.subject <- rbind( read.table(input_train_subject_file), read.table(input_test_subject_file) )

features.labels   <- read.table(input_labels_features_file)
activities.labels <- read.table(input_labels_activity_file)

# Labeling the Data columns
names(data.x)       <- features.labels[, 2]
names(data.subject) <- c("subject")
names(data.y)       <- c("activity")

# 2. Process only mean and std values
mean_std <- grepl(".*-mean.*|.*std.*", features.labels[,2])
data.set <- cbind(data.subject, data.y, data.x[, mean_std])

# 3. descriptive activity names
data.set$activity <- activities.labels[data.set$activity, 2]

# 4. Appropriately labels the data
names(data.set) <- gsub(
    "\\()",
    "",
    gsub(
        "-std",
        " Std",
        gsub(
            "-mean",
            " Mean",
            names( data.set )
            )
        )
    )

data.tidy <- aggregate(. ~ activity + subject, data=data.set, mean)

# 5. Write Data to file
write.table(data.tidy, output_file, sep=";")
