---
title: "Getting and Cleaning Data Project Readme"
author: "HH"
date: "Friday, September 19, 2014"
output: html_document
---

## Introduction

This README describes the R script **run_analysis.R** which is used to arrange mobile phone
data into a tidy dataset. 


To use the **run_analysis.R** script, place files from this repo in the R working directory, together with 

* the base data folder **UCI HAR Dataset** , which can be unzipped from this location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and source it from the command line.

```{r}
source('run_analysis.R')
```

The files in this GitHub repo are:

* **README.md** This file
* **run_analysis.R** R script for carrying out the project
* **tidy_dataset_2.txt** Data file of the output of the project
* **CodeBook.md** Specification of the data table found in **tidy_dataset_2.txt**
* **NewColNames.txt** an auxiliary file used by **run_analysis.R** to add human readable column names.


List of subsections of this README:  

0. Downloading, unzipping and loading the raw data
1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labelling the data set with descriptive variable names. 
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Writing the tidy data sets from steps 4 and 5 to files
7. code to show how to load the tidy data files from files into R


## 0. Downloading, unzipping and loading the raw data

The training **X_train.txt** and test data **X_test.txt** files are large, so the script only downloads the zip file
if it does not already exist. And only loads the variables if they do not already exist.

Data from the following auxilliary files are also loaded:

* **activity_labels.txt** - the activity labels
* **feature.txt** - the column names of the data
*  **y_test** and **y_train** - the activity ids
* **subject_test** and **subject_train** - the subject IDs


## 1. Merging the training and the test sets to create one data set.

Merged to one data.frame:

**whole_data**

Use, e.g.

```{r}
whole_data[1:5, 1:5]
```
to see this

## 2. Extracting only the measurements on the mean and standard deviation for each measurement. 

For this, I chose to include any measurements including "mean." This included several measurements of angles. This new dataframe is called: **mean_and_std_data**

```{r}
mean_and_std_data[1:5,1:5]
```

## 3. Using descriptive activity names to name the activities in the data set

The descriptive activity names are in the column **mean_and_std_data$activity_label**. The data columns were reordered, to put the activity_label, activity_id, subject_id as the first three columns. To see the activity lables, use e.g.

```{r}
head(reordered_data$activity_label)
```

## 4. Appropriately labelling the data set with descriptive variable names.

Column names were chosen to be human readable, following the explanations in: **features_info.txt** and can be seen by typing:

```{r}
colnames(reordered_data)
```


## 5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

This was achieved by splitting the data set into sub frames, for each subject and activity.
Subject/Activity labels were chosen in the format:

Subject_n_DOING

as described in the codebook.

The tidy dataset can be examined as:

```{r}
tidy_dataset_2
```



## 6. Writing the tidy data sets from steps 4 and 5 to files

The final tidy dataset is written to the file tidy_dataset_2.txt

By uncommenting the appropriate line, it is possible to write the (much larger) tidy_dataset_1.txt file

## 7. code to show how to load the tidy data files from files into R

The tidy_dataset_2.txt file is read back into the variable **tds2**

The tidy_dataset_1 may similarly be read by uncommenting the appropriate line