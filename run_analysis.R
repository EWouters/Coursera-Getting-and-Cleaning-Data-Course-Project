# Load data.table library
library(data.table)

# Set name of datafolder
datafolder <- "UCI HAR Dataset"

# Function to read the files
readfile <- function(...) {
    read.csv(file.path(datafolder, ...), header = F, sep = " ")
}

# Read Activity labels and Features
activity_labels <- readfile("activity_labels.txt")
features <- readfile("features.txt")

nfeatures <- length(features[[1]])


# Function to read the datafiles
readdf <- function(...) {
    read.fwf(file.path(datafolder, ...), rep.int(16, nfeatures))
}

# Read Subject test, X test and Y test
subject_test <- readfile("test", "subject_test.txt")
X_test <- readdf("test", "X_test.txt")
Y_test <- readdf("test", "Y_test.txt")

# Read Test Inertial Signals
body_acc_x_test <- readdf("test", "Inertial Signals", "body_acc_x_test.txt")
body_acc_y_test <- readdf("test", "Inertial Signals", "body_acc_y_test.txt")
body_acc_z_test <- readdf("test", "Inertial Signals", "body_acc_z_test.txt")
body_gyro_x_test <- readdf("test", "Inertial Signals", "body_gyro_x_test.txt")
body_gyro_y_test <- readdf("test", "Inertial Signals", "body_gyro_y_test.txt")
body_gyro_z_test <- readdf("test", "Inertial Signals", "body_gyro_z_test.txt")
total_acc_x_test <- readdf("test", "Inertial Signals", "total_acc_x_test.txt")
total_acc_y_test <- readdf("test", "Inertial Signals", "total_acc_y_test.txt")
total_acc_z_test <- readdf("test", "Inertial Signals", "total_acc_z_test.txt")

# Read Subject train, X train and Y train
subject_train <- readfile("train", "subject_train.txt")
X_train <- readdf("train", "X_train.txt")
Y_train <- readdf("train", "Y_train.txt")

# Read Train Inertial Signals
body_acc_x_train <- readdf("train", "Inertial Signals", "body_acc_x_train.txt")
body_acc_y_train <- readdf("train", "Inertial Signals", "body_acc_y_train.txt")
body_acc_z_train <- readdf("train", "Inertial Signals", "body_acc_z_train.txt")
body_gyro_x_train <- readdf("train", "Inertial Signals", "body_gyro_x_train.txt")
body_gyro_y_train <- readdf("train", "Inertial Signals", "body_gyro_y_train.txt")
body_gyro_z_train <- readdf("train", "Inertial Signals", "body_gyro_z_train.txt")
total_acc_x_train <- readdf("train", "Inertial Signals", "total_acc_x_train.txt")
total_acc_y_train <- readdf("train", "Inertial Signals", "total_acc_y_train.txt")
total_acc_z_train <- readdf("train", "Inertial Signals", "total_acc_z_train.txt")

