#load test data
x_test<-read.table("./Project/test/X_test.txt")
y_test<-read.table("./Project/test/y_test.txt")
subj_test<-read.table("./Project/test/subject_test.txt")

#load train data
x_train<-read.table("./Project/train/X_train.txt")
y_train<-read.table("./Project/train/y_train.txt")
subj_train<-read.table("./Project/train/subject_train.txt")

#load other data
features<-read.table("./Project/features.txt")
activity<-read.table("./Project/activity_labels.txt")

#1.Merges the training and the test sets to create one data set. 
#merge x data
x_data<-rbind(x_test, x_train)

#merge y data
y_data<-rbind(y_test, y_train)

#merge subject data
subj_data<-rbind(subj_test, subj_train)

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#columns with means and SD
MSD<-grep("-(mean|std)\\(\\)", features[, 2])

#subset mean and SD columns
x_data_f<-x_data[ , MSD]

#set the column names
names(x_data_f)<-features[MSD, 2]

#3. Uses descriptive activity names to name the activities in the data set
#add activity names to the values
y_data[, 1] <- activity[y_data[, 1], 2]

#columnname
names(y_data) <- "activity"

#4. Appropriately labels the data set with descriptive variable names
#columnname for subjects
names(subj_data) <- "subject"

#merge the 3 sub-datasets to one
data<-cbind(subj_data, y_data, x_data_f)

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#colMeans for the columns from x_data_f (columns 3:68)
averages<-ddply(data, .(subject, activity), function(x) colMeans(x[, 3:68]))

write.table(averages, "./Project/Q5_data.txt", row.name=FALSE)
