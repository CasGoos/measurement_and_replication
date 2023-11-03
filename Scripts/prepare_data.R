# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data. When starting out, this project will be set up to generate
# a fake dataset for the pre-registration.

# set-up -----------------------------------------------------------------------
library(worcs) # reproducible workflow template package
library(foreign)
library(readxl)
set.seed(17042023) # seed for random number generators



# Data Loading -----------------------------------------------------------------
### ML Retrieved Data
## List of measures X.Y.Z to extract, where X is Many Labs number, Y is study
## in the order as reported in the Many Labs protocol, & Z is the specific 
## measure from study Y as in line with the order of the measurement coding.
# Likely reliability: 1.10, 1.11, 1.12.3, 2.4.1, 2.4.2, 2.8, 2.10.1, 2.12.1, 
# 2.12.2, 2.12.3, 2.15, 2.19.2, 2.23, 3.7.1, 3.7.2, 3.8.1, 3.8.2, 5.7, 5.9.1
# Likely factor: 1.10, 1.11, 1.12.3, 2.4.1, 2.4.2, 2.8, 2.10.1, 2.12.1, 2.12.2,
# 2,12,3, 2.15, 2.19.2, 2.23, 3.7.1, 3.7.2, 3.8.1, 3.8.2, 5.7, 5.9.1
# Maybe reliability: 1.3, 1.12.1, 2.2, 2.3, 2.19.1, 2.20, 3.2.1, 3.5, 5.1.1, 
# 5.1.2, 5.4, 5.5.1, 5.5.2
# Maybe factor: 1.3, 1.12.1, 2.3, 2.19.1, 2.20, 3.2.1, 3.5, 5.1.1, 5.1.2, 5.4,
# 5.5.1, 5.5.2

## ML 1
Data_ML1 <- read.spss("Data/LoadingInputData/MLRetrievedData/Full_Dataset_De-Identified.sav", 
                      to.data.frame = TRUE, use.value.labels = FALSE)


## ML 2
# 2.2
Data_2.2 <- read.csv("Data/LoadingInputData/MLRetrievedData/Kay_1_study_global_include_all_CLEAN_CASE.csv")
# 2.3
Data_2.3 <- read.csv("Data/LoadingInputData/MLRetrievedData/Alter_1_study_global_include_all_CLEAN_CASE.csv")
# 2.4.1
Data_2.4.1 <- read.csv("Data/LoadingInputData/MLRetrievedData/Graham_2_study_global_include_all_CLEAN_CASE.csv")
# 2.4.2
Data_2.4.2 <- read.csv("Data/LoadingInputData/MLRetrievedData/Graham_1_study_global_include_all_CLEAN_CASE.csv")
# 2.8.2
Data_2.8.2 <- read.csv("Data/LoadingInputData/MLRetrievedData/Inbar_1b_study_global_include_all_CLEAN_CASE.csv")
# 2.10.1
Data_2.10.1 <- read.csv("Data/LoadingInputData/MLRetrievedData/vanLange_1_study_global_include_all_CLEAN_CASE.csv")
# 2.12
Data_2.12 <- read.csv("Data/LoadingInputData/MLRetrievedData/Anderson_1_study_global_include_all_CLEAN_CASE.csv")
# 2.15
Data_2.15 <- read.csv("Data/LoadingInputData/MLRetrievedData/Giessner_1_study_global_include_all_CLEAN_CASE.csv")
# 2.19
Data_2.19.1 <- read.csv("Data/LoadingInputData/MLRetrievedData/Savani_3a_study_global_include_all_CLEAN_CASE.csv")
# 2.20
Data_2.20 <- read.csv("Data/LoadingInputData/MLRetrievedData/Norenzayan_1_study_global_include_all_CLEAN_CASE.csv")
# 2.23
Data_2.23 <- read.csv("Data/LoadingInputData/MLRetrievedData/Zhong_1_study_global_include_all_CLEAN_CASE.csv")


## ML 3
Data_ML3 <- read.csv("Data/LoadingInputData/MLRetrievedData/ML3AllSitesandmTurk.csv")
# 3.5
Data_3.5 <- read.csv("Data/LoadingInputData/MLRetrievedData/ML3StroopData.csv")


## ML 5
# 5,1
Data_5.1 <- read_excel("Data/LoadingInputData/MLRetrievedData/ML5 Alb 5 Revised Protocol In Lab.xlsx")
# 5.4
Data_5.4 <- read.spss("Data/LoadingInputData/MLRetrievedData/dataset_LoBue_raw.sav", 
                      to.data.frame = TRUE)
# 5.5.1 & 5.5.2
Data_5.5.1 <- read.csv("Data/LoadingInputData/MLRetrievedData/Payne replication Data/Genova_ML5.csv")
# 5.7 
Data_5.7 <- read.csv("Data/LoadingInputData/MLRetrievedData/ml5_computed_dataset.csv")
# 5.9.1
Data_5.9.1 <- read.csv("Data/LoadingInputData/MLRetrievedData/ML5_fulldataset_with_suspicion.csv")



# Data Storing -----------------------------------------------------------------
# replace iris with your own dataframe
open_data(data = iris, filename = paste0(paste0(
  "Data/InputData/", deparse(substitute(iris))), ".csv"),
  codebook = paste0(paste0(
    "Data/InputData/codebook_", deparse(substitute(iris))), ".Rmd"),
  value_labels = paste0(paste0(
    "Data/InputData/value_labels_", deparse(substitute(iris))), ".yml")) 


# Data Cleaning ----------------------------------------------------------------


# Cleaned Data Storing ---------------------------------------------------------
