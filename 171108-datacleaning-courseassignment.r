library(dplyr)
#download data
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

#unzip file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

### open data
x_train <- read.table(file.path(path_rf, "train","X_train.txt"),header=FALSE)
y_train <- read.table(file.path(path_rf, "train","y_train.txt"),header=FALSE)
subject_train <- read.table(file.path(path_rf, "train","subject_train.txt"),header=FALSE)

x_test <- read.table(file.path(path_rf, "test","X_test.txt"),header=FALSE)
y_test <- read.table(file.path(path_rf, "test","y_test.txt"),header=FALSE)
subject_test <- read.table(file.path(path_rf, "test","subject_test.txt"),header=FALSE)

###1.merges the trainring and the test sets to create one data set.
features_data <- rbind(x_train, x_test)
activity_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

names(subject_data)<-c("subject")
names(activity_data)<- c("activity")
features_name <- read.table(file.path(path_rf, "features.txt"), header = FALSE)
names(features_data)<- features_name$V2

#bind hole data
data <- cbind(features_data, subject_data, activity_data)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
#subset the name of features using means and stds
subset_features_name <- features_name$V2[grep("(mean|std)\\(\\)", features_name[, 2])]
select_names <- c(as.character(subset_features_name), "subject","activity")

#subset the data
subset_data <- subset(data, select=select_names)

###3.Uses descriptive activity names to name the activities in the data set
activity_label <- read.table(file.path(path_rf,"activity_labels.txt"), header = FALSE)

data$activity<-factor(data$activity)
data$activity<- factor(data$activity,labels=as.character(activity_label$V2))

#4.Appropriately labels the data set with descriptive variable names.
#prefix t is replaced by time
names(data)<-gsub("^t", "time", names(data))
#Acc is replaced by Accelerometer
names(data)<-gsub("Acc","Accelerometer",names(data))
#Gyro is replaced by Gyroscope
names(data)<-gsub("Gyro","Gyroscope",names(data))
#prefix f is replaced by frequency
names(data)<-gsub("^f","frequency",names(data))
#Mag is replaced by Magnitude
names(data)<-gsub("Mag","Magnitude",names(data))
#BodyBody is replaced by Body
names(data)<-gsub("BodyBody","Body",names(data))

#5.From the data set in step 4, creates a second, independent tidy data set with
#the average of each variable for each activity and each subject.
