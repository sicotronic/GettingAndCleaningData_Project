## Data Transformation for this Project
## This section of the Code Book describes the variables, the data, 
## and any transformations or work that I performed to clean up the 
## data as described in the CodeBook.md file.

# This ascript assumes that the data was extracted in the the same directory 
# Load the data from the files
x_train_data <- read.table("train/X_train.txt")
x_test_data <- read.table("test/X_test.txt")
y_train_data <- read.table("train/Y_train.txt")
y_test_data <- read.table("test/Y_test.txt")
subject_train_data <- read.table("train/subject_train.txt")
subject_test_data <- read.table("test/subject_test.txt")

# Merges the training and the test sets to create one x, y and subject data sets for each. 
x_data <- rbind(x_train_data, x_test_data)
y_data <- rbind(y_train_data, y_test_data)
subject_data <- rbind(subject_train_data, subject_test_data)

# Extracts only the measurements on the mean and standard deviation for each measurement. 
features_names <- read.table("features.txt")
features_names_mean_std <- grep("-(mean|std)\\(\\)", features_names[,2])

x_data <- x_data[,features_names_mean_std]
names(x_data) <- features_names[features_names_mean_std,2]

# Uses descriptive activity names to name the activities in the data set 
activities_names <- read.table("activity_labels.txt")
y_data[,1] <- activities_names[y_data[,1],2]
names(y_data) <- "activity"

# Appropriately labels the data set with descriptive variable names. 
names(subject_data) <- "subject"

data <- cbind(x_data, y_data, subject_data)

# Create a second, independent tidy data set with the average of each variable
# for each activity and each subject and Write into a file
data_averages <- ddply(data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(data_averages, "data_averages.txt", row.name=FALSE)

