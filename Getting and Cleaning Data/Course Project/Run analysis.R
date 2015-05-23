#Run the `if else` statement to assess the availability of the dataset in the working directory

required_files<-c("activity_labels.txt", "features.txt",
                  "test/X_test.txt", "test/y_test.txt",
                  "train/X_train.txt","train/y_train.txt",
                  "test/subject_test.txt","train/subject_train.txt")
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filedest<-"./UCI HAR Dataset.zip"
setInternet2(TRUE)  # set the R_WINs_INTERNET2 to TRUE

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

#Read, rbind, assign the column name the subject_test.txt and subject_train.txt into 
#subject part. Add one more column to classify whether the subject is test or train.

subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",
                         col.names="Subject")
subject_test$Group<-"test" #Create a "Group" column with "test" and "train" value
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",
                          col.names="Subject")
subject_train$Group<-"train" #Create a "Group" column with "test" and "train" value
subject_combined<-rbind(subject_test,subject_train)


#Read, rbind and assign the col name the y_test.txt and y_train.txt into activity part
activity_test<-read.table("./UCI HAR Dataset/test/y_test.txt",
                          col.names="Activity")
activity_train<-read.table("./UCI HAR Dataset/train/y_train.txt",
                           col.names="Activity")
activity_combined<-rbind(activity_test,activity_train)

#Read and rbind the x_test.txt and x_train.txt into feature part
feature_test<-read.table("./UCI HAR Dataset/test/x_test.txt")
feature_train<-read.table("./UCI HAR Dataset/train/x_train.txt")
feature_combined<-rbind(feature_test,feature_train)

#The names of features are listed in features.txt. We need to assign each name
#feature_combined data frame.
#Read features.txt to feature_names
feature_name<-read.table("./UCI HAR Dataset/features.txt")

#Assign column names to each feature in feature_combined:
colnames(feature_combined)<-feature_name$V2

#1. Merges the training and the test sets to create one data set.
Combined_data<-cbind(subject_combined,activity_combined,feature_combined)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std<-feature_name$V2[grep("mean\\(\\)|std\\(\\)", feature_name$V2)]
extracted_colnames<-c("Subject","Group","Activity",as.character(mean_std))
Filtered_data<-subset(Combined_data,select=extracted_colnames)


#3 Uses descriptive activity names to name the activities in the data set
#Read activity_labels.txt
Labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
Filtered_data$Activity<-factor(Filtered_data$Activity,labels=Labels$V2)

#4 Appropriately labels the data set with descriptive variable names. 
names(Filtered_data)<-gsub("Acc", "Accelerator", names(Filtered_data))
names(Filtered_data)<-gsub("Mag", "Magnitude", names(Filtered_data))
names(Filtered_data)<-gsub("Gyro", "Gyroscope", names(Filtered_data))
names(Filtered_data)<-gsub("^t", "time", names(Filtered_data))
names(Filtered_data)<-gsub("^f", "frequency", names(Filtered_data))

#5 From the data set in step 4, creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject.
if (!require("dplyr")) {
  install.packages("dplyr")}

library(dplyr)
Filtered_data<-tbl_df(Filtered_data)
Filtered_data<-group_by(Filtered_data,Subject,Activity,Group)
tidy_data<-summarise_each(Filtered_data,funs(mean))
write.table(tidy_data, file = "tidydata.txt",row.name=FALSE)