---
Title: "Cleaning and Getting Data Course Project- Readme"
Author: "KDThinh"
Date: "Sunday, May 17, 2015"
---

+ This Readme describes the steps involved in getting a tidy data set from the raw data provided by Samsung by running the Run_analysis.R script.

+ The script was written using RStudio in Windows 7 systems. Hence, its performance will be at optimal condition provided the same working environment is being used.

+ The Run_analysis.R should be put in the same working directory as in R environment. 

+ The name of the Samsung data folder (i.e. `UCI HAR Dataset`) and all of its content are presumed to retain the same original name. Such folder is also located in the same working directory.

+ When executed, the script will first run an `if else` code to automatically decide whether to download the `UCI HAR Dataset`, depending on the availability of `UCI Har Dataset` folder (and its content) and `UCI HAR Dataset.zip` file. If the zip file is there or the intact `UCI HAR Dataset` folder is there, no download will be required. Otherwise it will start download the zip file. On the other hand, if the 'UCI HAR Dataset' is not there or it is there but its content is damaged (missing important files), the script will unzip `UCI HAR Dataset.zip` file to `UCI HAR Dataset` folder.

+ This script also requires dplyr package. Therefore, it will also check whether such package is available in the user's R platform. If not, the script will automatically install and execute the package.


## Pre-process the raw data

Run the `if else` statement to assess the availability of the dataset in the working directory
```{r eval=FALSE} 
required_files<-c("activity_labels.txt", "features.txt",
                  "test/X_test.txt", "test/y_test.txt",
                  "train/X_train.txt","train/y_train.txt",
                  "test/subject_test.txt","train/subject_train.txt")
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filedest<-"./UCI HAR Dataset.zip"
setInternet2(TRUE)  # set the R_WIN_INTERNET2 to TRUE

if(file.exists("./UCI HAR Dataset")) {
    checked_files<-list.files("./UCI HAR Dataset", recursive = TRUE)
    if(!sum(required_files %in% checked_files)==8) {
        if (file.exists("./UCI HAR Dataset.zip")) {
          unzip("./UCI HAR Dataset.zip")
        } else {
          download.file(fileUrl,filedest)
          unzip("./UCI HAR Dataset.zip")
        }
    }
} else {
  if (file.exists("./UCI HAR Dataset.zip")) {
    unzip("./UCI HAR Dataset.zip")
  } else {
    download.file(fileUrl,filedest)
    unzip("./UCI HAR Dataset.zip")
  }
}
```

##1. Merges the training and the test sets to create one data set.
Merges the training and the test sets to create one data set-> inertial signals are 
not needed
We only need to combine the follow 6 text files (according to README.TXT):

* subject_test.txt, subject_train.txt: show the values of the subjects. They are
named from 1 to 30. Each row identifies the subject who performed the activity 
for each window sample.

* y_train.txt and x_test.txt: show the value of the type of activity takent.
They are named from 1 to 6 explained in activity_labels.txt. Each subject basically 
have 6  types of activities -->  the dataset would have 30 * 6 = 180 observations.

* X_train.txt and X_test.txt: show the measurement data obtained from each type of 
activity of each subject.

* The format of the tidy dataset would be ideallt as follow:

|   Subjects             |   Activity        |    Measurement data...         |
|----------------------- |-------------------|------------------------------- |  
|   1 (from subject)     |      1 (from y)   |         (measured data from X) |
|    1                   |      2            |              ...               |
|    .                   |      .            |              ...               |
|   ...                  |     ...           |              ...               |
|   30                   |      5            |              ...               |
|   30                   |      6            |              ...               |

Read, rbind, assign the column name the subject_test.txt and subject_train.txt into 
subject part. Add one more column to classify whether the subject is test or train.
```{r}
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",
                         col.names="Subject")
subject_test$Group<-"test" #Create a "Group" column with "test" and "train" value
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",
                          col.names="Subject")
subject_train$Group<-"train" #Create a "Group" column with "test" and "train" value
subject_combined<-rbind(subject_test,subject_train)
head(subject_combined)
```

Read, rbind and assign the col name the y_test.txt and y_train.txt into activity part
```{r}
activity_test<-read.table("./UCI HAR Dataset/test/y_test.txt",
                          col.names="Activity")
activity_train<-read.table("./UCI HAR Dataset/train/y_train.txt",
                           col.names="Activity")
activity_combined<-rbind(activity_test,activity_train)
head(activity_combined)
```

Read and rbind the x_test.txt and x_train.txt into feature part
```{r}
feature_test<-read.table("./UCI HAR Dataset/test/x_test.txt")
feature_train<-read.table("./UCI HAR Dataset/train/x_train.txt")
feature_combined<-rbind(feature_test,feature_train)
head(measurement_combined[,1:5],5)
```

The names for each feature are specified in features.txt. We need to assign each feature name to the respective column name of `feature_combined` data frame.
Read features.txt and assign it to feature_name
```{r}
feature_name<-read.table("./UCI HAR Dataset/features.txt")
```

Assign column names to each type of feature in measurement_combined:
```{r}
colnames(feature_combined)<-feature_name$V2
```

```{r}
Combined_data<-cbind(subject_combined,activity_combined,feature_combined)
head(Combined_data[,1:5],5)
```
```{r}
dim(Combined_data)
```
##2 Extracts only the measurements on the mean and standard deviation for each measurement.

Variables involved in mean or standard deviation (std) are searched throughout the variable names stored in `feature_name$V2`. They are saved as `mean_std` which is a factor class. Therefore, the column names of the extracted dataset will include the 'Subject,'Group', Activity' and 'mean_std' as character variables. 

```{r}
mean_std<-feature_name$V2[grep("mean\\(\\)|std\\(\\)", feature_name$V2)]
extracted_colnames<-c("Subject","Group","Activity",as.character(mean_std))
```
The `Filtered_data` is the extracted data frame from `Combined_data` which include only the feature names of mean or std variables.
```{r}
Filtered_data<-subset(Combined_data,select=extracted_colnames)
head(Filtered_data[,1:5],5)
```
```{r}
dim(Filtered_data)
```
##3. Uses descriptive activity names to name the activities in the data set
The Activity in the current `Filtered_data` are numeric variables with values from 1 to 6. To assign each numeric variable to a particular activity, we have to read the `activity_labels.txt` and factorize accordingly.
```{r}
Labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
Filtered_data$Activity<-factor(Filtered_data$Activity,labels=Labels$V2)
head(Filtered_data$Activity)
```
```{r}
summary(Filtered_data$Activity)
```{r}
class(Filtered_data$Activity)
```
##4. Appropriately labels the data set with descriptive variable names. 
* prefix t is replaced by time
* Acc is replaced by Accelerometer
* Gyro is replaced by Gyroscope
* prefix f is replaced by frequency
* Mag is replaced by Magnitude
* BodyBody is replaced by Body
```{r}
names(Filtered_data) <- gsub("Acc", "Accelerator", names(Filtered_data))
names(Filtered_data) <- gsub("Mag", "Magnitude", names(Filtered_data))
names(Filtered_data) <- gsub("Gyro", "Gyroscope", names(Filtered_data))
names(Filtered_data) <- gsub("^t", "time", names(Filtered_data))
names(Filtered_data) <- gsub("^f", "frequency", names(Filtered_data))
```
```{r}
names(Filtered_data)
```

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
This can be easily done by using dplyr package. The `new_Dataset` obtained above is first converted to `tbl_df type`, followed by group_by command to group the `new_Dataset` according to Subject, Activity and Group

```{r eval=FALSE}
library(dplyr)
Filtered_data<-tbl_df(Filtered_data)
Filtered_data<-group_by(Filtered_data,Subject,Activity,Group)
tidy_datat<-summarise_each(Filtered_data,funs(mean))
write.table(tidy_dataset, file = "tidydata.txt",row.name=FALSE)
```

