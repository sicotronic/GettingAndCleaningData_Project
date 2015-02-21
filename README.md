---
title: "Getting and Cleaning Data Course - Programming Project"
author: "Juan Ignacio Navarro Horniacek"
date: "Tuesday, February 17, 2015"
output: html_document
---

## Data Science Specialization
#### John Hopkins University

### Getting and Cleaning Data Course - Programming Project
    
####Purpose:  
The purpose of this project is to demonstrate the student ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
  
####Required Submissions:  
The project will be graded by other peer students of this course on a series of yes/no questions related to the project. It is required to submit:   

1) a tidy data set as described below

2) a link to a Github repository with your script for performing the analysis

3) a code book that describes the variables, the data, and any transformations or work that you   
performed to clean up the data called CodeBook.md.

4) also is required to include a README.md in the repo with the scripts. This repo explains how all of the scripts work and how they are connected.    
  
  
#### The script on run_analysis.R performs the following:  

You should create one R script called run_analysis.R that does the following:  

1) Merges the training and the test sets to create one data set.   

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set  

4) Appropriately labels the data set with descriptive variable names. 

5) From the data set in step 4, creates a second, independent tidy data set with the average of   each variable for each activity and each subject.  

#### Included files:  
 - README.md: This file describing the project
 
 - CodeBook.md: CodeBook file decribing the data, its variables and all the performed transformations
 
 - run_analysis.R: R script file containing the code with the steps described above to generate the data_averages.txt dataset. Load the script in order to run it. **Note: This script assumes that the data has been extracted in the same directory under the default folder name "UCI HAR Dataset/"" (The download link can be found in the CodeBook.md file)**
 
 - data_averages.txt: the tidy data obtained from the original dataset as required for this project.
 
 