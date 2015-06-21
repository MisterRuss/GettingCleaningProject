## run_Analysis.R - Course Project for Getting and Cleaning Data
##                  Ray Russell
##                  6/20/2015
## Assumes that the working dirctory is the root directory of UCI Har Dataset
##
## Load Packages
install.packages("dplyr")
library("dplyr")
## Merge the Training and Test Datasets
## Load all of the files into separate data frames
X_test <-read.table( file="./test/X_test.txt",blank.lines.skip=FALSE,header=FALSE)
Y_test <-read.table( file="./test/y_test.txt",blank.lines.skip=FALSE,header=FALSE)
X_train <-read.table( file="./train/X_train.txt",blank.lines.skip=FALSE,header=FALSE)
Y_train <-read.table( file="./train/y_train.txt",blank.lines.skip=FALSE,header=FALSE)
features <-read.table( file="./features.txt",blank.lines.skip=FALSE,header=FALSE,stringsAsFactors=FALSE)
subject_test <-read.table( file="./test/subject_test.txt",blank.lines.skip=FALSE,header=FALSE)
subject_train <-read.table( file="./train/subject_train.txt",blank.lines.skip=FALSE,header=FALSE)
activity_labels <-read.table( file="./activity_labels.txt",blank.lines.skip=FALSE,header=FALSE)
# Because there are duplicates in the features file, append index number to names to make them unique
colname_vector <- features[,2]
for (i in 1:length(colname_vector)) colname_vector[i] <- paste0(sprintf("%03d", i),"-",colname_vector[i])
# Set up the column names for all the data frames priot to combining them
colnames(X_test) <- colname_vector
colnames(X_train) <- colname_vector
colnames(subject_test) <- c("Subject")
colnames(subject_train) <- c("Subject")
colnames(Y_test) <- c("Activity")
colnames(Y_train) <- c("Activity")
colnames(activity_labels) <- c("Activity", "Activity_Label")
## Do the test column binds
all_test <- cbind(X_test, subject_test, Y_test)
## Do the train column binds
all_train <- cbind(X_train, subject_train, Y_train)
## Row bind the combined test and training data
all_combined <- rbind(all_train, all_test)
## Now substitute the Activity Labels for the Activity number variables
all_combined[,563] <- activity_labels[all_combined[,563], 2]
## Now select out only the mean and std columns - which end with "mean()" or "std()" in the name
## Include the Subject and Activity as the first columns
combined_subset <-select(all_combined, starts_with("Subject"), starts_with("Activity"), ends_with("std()"), ends_with("mean()"))
## At this point we have the correct set of columns and can proceed with the groupings
grouped_subset <- group_by(combined_subset, Subject, Activity)
## To get the final df, use summarize_each to calculate the mean of all the non-grouping variables
answer <- summarise_each(grouped_subset,funs(mean))
## Print the answer, so we can see that it has the correct number of rows (180) and is tidy
print(answer)
## Finally, write out the answer data frame to a file
write.table(answer, file="SummarizedActivity.txt", row.names=FALSE)
## End of R program
