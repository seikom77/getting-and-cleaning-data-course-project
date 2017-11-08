# Code book for _Coursera "Getting and Cleaning Data" course project
---

## Data source
This dataset is derived from the "Human Activity Recogniion Using Sumartphones Data Set". 
The data is available via link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Features of 


## Data transformation
The raw datasets are processed with run_analysis.R script to create tidy data set.
It consists of the following 5 processes.
1.Merge Training and Test datasets  
1.Extract mean and standard deviation variables  
1.Use descriptive activity names  
1.Label variables appropriately  
1.Create a tidy data set  

## Tidy data
The tidy_data.text data files is a text file, containing space_separated values.

The first row contains the names of the variables, which are listed in the Variables section below.

## Variables
・`subject`
Subject identifier, integer, ranges from 1 to 30.

・`activity`
Activity label, 6 possible values;
  1. WALKING
  1. WALKING_UPSTAIRS
  1. WALKING_DOWNSTAIRS
  1. SITTING
  1. STANDING
  1. LAYING

・a 79 feature vector with time and frequency domains and signal variables (numeric)

|Name|Time domain|Frequency domain|
|:-----------|------------:|:------------:|
|Body Acceleration|TimeDomain.BodyAcceleration.XYZ|FrequencyDomain.BodyAcceleration.XYZ|
|Gravity Acceleration|TimeDomain.GravityAcceleration.XYZ|
|Body Acceleration Jerk|TimeDomain.BodyAccelerationJerk.XYZ|FrequencyDomain.BodyAccelerationJerk.XYZ|
|Body Angular Speed|TimeDomain.BodyAngularSpeed.XYZ|FrequencyDomain.BodyAngularSpeed.XYZ|
|Body Angular Acceleration|TimeDomain.BodyAngularAcceleration.XYZ|
|Body Acceleration Magnitude	TimeDomain.BodyAccelerationMagnitude|FrequencyDomain.BodyAccelerationMagnitude|
|Gravity Acceleration Magnitude|TimeDomain.GravityAccelerationMagnitude|
|Body Acceleration Jerk Magnitude|TimeDomain.BodyAccelerationJerkMagnitude|FrequencyDomain.BodyAccelerationJerkMagnitude|
|Body Angular Speed Magnitude|TimeDomain.BodyAngularSpeedMagnitude|FrequencyDomain.BodyAngularSpeedMagnitude|
|Body Angular Acceleration Magnitude|TimeDomain.BodyAngularAccelerationMagnitude|FrequencyDomain.BodyAngularAccelerationMagnitude
