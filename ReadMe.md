ReadME - Week 4 Project

library(dplyr) - loads the dplyr package

X_train - Training set

y_train - Training labels

X_train and y_train are loaded in
Then column V1 in y_train is renamed to PersonID
Then y_train and X_train are combined into train

X_test - Test set

y_test - Test labels

X_test and y_test are loaded in
Then column V1 in y_test is renamed to PersonID
Then y_test and X_test are combined into test

Then train and test and binded into one data set called combo

Then the columns in combo are renamed to something more descriptive

Then a subset of the combo data is created called comboMean that only keeps columns with a name containing "mean"

Then a subset of the combo data is created called comboStd that only keeps columns with a name containing "std"

Then comboMean and comboStd are binded into comboMeanStd

Then a new table is written that takes the average of each column in comboMeanStd