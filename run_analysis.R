# This is an R script called run_analysis.R that does the following:
# 0. Downloads, unzips and loads the raw data
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 6. Writes the tidy data sets from steps 4 and 5 to files
# 7. Provides code to show how to load the tidy data files from files into R



# 0. Download, unzip and load the raw data



# check if the zipped file is already in the current directory
if (!file.exists("dataset.zip")) {
    print("Zipped data file does not exist in working directory. Donwload:")
    file_url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    print("Download complete")
    print("Unzipping:")
    unzip("dataset.zip")
    print("Unzipping complete")
} else {
    print("zipped raw data file exists")
}

# check if the raw data is already in memory
if (!exists("raw_xtrain")) {
    print("Loading training data to raw_xtrain...")
    raw_xtrain <- read.table('./UCI HAR Dataset/train/X_train.txt')
    print("...done")
} else {
    print("raw_xtrain exists already, will not reload.")
}
print("dim(raw_xtrain)")
print(dim(raw_xtrain))
# # [1] 7352  561

if (!exists("raw_xtest")) {
    print("Loading test data to raw_xtest...")
    raw_xtest <- read.table('./UCI HAR Dataset/test/X_test.txt')
}else {
    print("raw_xtest exists already, will not reload.")
}
print("dim(raw_xtest)")
print(dim(raw_xtest))
# # [1] 2947  561


print("loading/using existing values for featurenames, activity ids, subject ids...")
if (!exists("original_featurenames")) {
    original_featurenames<-read.table('./UCI HAR Dataset/features.txt')
}

if (!exists("new_featurenames")) {
    new_col_names<-read.table('NewColNames.txt')
}



if (!exists("original_activity_labels")) {
    original_activity_labels<-read.table('./UCI HAR Dataset/activity_labels.txt')
}

if (!exists("test_activities")) {
    test_activities<-read.table('./UCI HAR Dataset/test/y_test.txt')
}


if (!exists("train_activities")) {
    train_activities<-read.table('./UCI HAR Dataset/train/y_train.txt')
}

if (!exists("test_subjects")) {
    test_subjects<-read.table('./UCI HAR Dataset/test/subject_test.txt')
}


if (!exists("train_subjects")) {
    train_subjects<-read.table('./UCI HAR Dataset/train/subject_train.txt')
}
print("...done.")

# uncomment to check contents of label data
# head(test_activities)
# head(test_subjects)
# head(train_activities)
# head(train_subjects)


# 1. Merge the training and the test sets to create one data set.

print("Merging data...")

#copy the original data without changing it
modified_xtest = raw_xtest
modified_xtrain = raw_xtrain
#add the column names
colnames(modified_xtest)<-original_featurenames[,2]
colnames(modified_xtrain)<-original_featurenames[,2]
#add a column for activity identifiers
modified_xtest$activity_id <- test_activities[,1]
modified_xtrain$activity_id <- train_activities[,1]
#add a column for subject ids
modified_xtrain$subject_id <- train_subjects[,1]
modified_xtest$subject_id <- test_subjects[,1]
#merge the data
whole_data<-rbind(modified_xtrain, modified_xtest)
print("...done.")

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

print("Reducting to just mean and std measurements...")

#make helper functions to test if colnames contain std, mean
containsmean<-function(stringtotest){return(length(grep("mean", stringtotest, ignore.case=TRUE))>0)}
containsstd<-function(stringtotest){return(length(grep("std", stringtotest, ignore.case=TRUE))>0)}

#contruct a logical vector with TRUE for those columns we wish to keep,
#namely, those with std, mean, and those we added for activity and subject ids
logical_mean<-sapply(colnames(whole_data), containsmean)
logical_std<-sapply(colnames(whole_data), containsstd)
logical_act_subj<- (colnames(whole_data)=="subject_id" | colnames(whole_data)=="activity_id")
#subset the data
mean_and_std_data<-whole_data[,logical_act_subj | logical_std | logical_mean]

print("...done.")

# 3. Use descriptive activity names to name the activities in the data set
#add a column with the lables being the orginal activity labels, 
#"SITTING", "STANDING", "WALKING" etc:

print("Adding descriptive activity names...")

mean_and_std_data$activity_label<-original_activity_labels[mean_and_std_data$activity_id,2]

#reorder the columns so that subject_id, activity_id and activity_label are the first three
#becuase these are "factors" 

reordered_data<-cbind(mean_and_std_data[, c("activity_label", "activity_id", "subject_id")], mean_and_std_data[, 1:86])

print("...done")

# 4. Appropriately label the data set with descriptive variable names. 

colnames(reordered_data)<-new_col_names[,]

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

#the names of the rows in the new data set will be Subject_x_DOING

new_row_names<-mapply(paste, "Subject", reordered_data$subject_id, reordered_data$activity_label, MoreArgs = list(sep="_"), SIMPLIFY=TRUE)


split_dataset<-split(reordered_data, as.factor(new_row_names))

row_names_no_repeats<-names(split_dataset)

mean_of_subframe<-function(subframe) {
    return(apply(subframe, 2, mean))
}

transpose_of_what_we_want <- data.frame(row.names=colnames(reordered_data)[4:89])

for (name in row_names_no_repeats) {
    temp_dataset<-
    transpose_of_what_we_want[,name]<- mean_of_subframe(split_dataset[[name]][,4:89])
}

tidy_dataset_2<-cbind(colnames(transpose_of_what_we_want), t(transpose_of_what_we_want))


# 6. Write the tidy data sets from steps 4 and 5 to files

write.table(reordered_data, file="tidy_dataset_1.txt")
write.table(tidy_dataset_2, file="tidy_dataset_2.txt")


# 7. Provide code to show how to load the tidy data files from files into R