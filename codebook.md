# Code book for Coursera "Getting and Cleaning Data" course project
---

## Data source
This dataset is derived from the "Human Activity Recogniion Using Sumartphones Data Set". 
The data is available via link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Features of 


## Data transformation
The raw datasets are processed with run_analysis.R script to create tidy data set.
It consists of the following 5 processes.
      1.Merge Training and Test datasets
      2.Extract mean and standard deviation variables
      3.Use descriptive activity names
      4.Label variables appropriately
      5.Create a tidy data set

## Tidy data
The tidy_data.text data files is a text file, containing space_separated values.

The first row contains the names of the variables, which are listed in the Variables section below.

## Variables
・'subject
Subject identifier, integer, ranges from 1 to 30.

・'activity
Activity label, 6 possible values;
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING

・a 79 feature vector with time and frequency domains and signal variables (numeric)
