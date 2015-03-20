x_test; x_train - downloaded dataset, it contains acceleration data from accelerometer and gyroscope

y_test; y_train - downloaded dataset, it's a factor variable of activity types

subj_test; subj_train - downloaded dataset, it's a factor variable of subjects

features - downloaded dataset, it contains the names of variables in x_train/x_test

activity - downloaded dataset, it contains the names of activities

x_data; y_data; subj_data - merged train and test subsets

MSD - list of columnames containing 'mean' or 'std' (standard deviation)

x_data_f - a filtered set of x_data, it contains only mean and SD variables

data - a merged dataset, contains the subj_data, y_data and x_data_f

averages - a new independent tidy data set with the average of each variable for each activity and each subject

