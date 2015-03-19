# Getting-Cleaning-Data---Cours-Project
The run_analysis.R script is devided into 6 mayor parts. First, the raw data files are loaded to R. Then the training and test data files are merged.
In the next step columnnames containing means and standard deviations (str) are extracted from the feature dataset. Then the x_data is subset by these columns. The name of the columns are set to the correct ones (from feature data).
Acitivity names are added to values in y_data and the columname is set to activity.
The columname for subj_data is set to subject, and then the 3 subsets (x_data, y_data, subj_data) are merged to single dataframe (data).
Finally, a new dataset (averages) is created with ddply() function. This dataset is saved as a separate file.
