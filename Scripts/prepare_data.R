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
## Each is indicated to reflect what the usefulness of the data should be based 
## their reporting in the original article and initial screening.
# Likely reliability: 1.10, 1.11, 1.12.3, 2.4.1, 2.4.2, 2.8, 2.10.1, 2.12.1, 
# 2.12.2, 2.12.3, 2.15, 2.19.2, 2.23, 3.7.1, 3.7.2, 3.8.1, 3.8.2, 5.7, 5.9.1
# Likely factor: 1.10, 1.11, 1.12.3, 2.4.1, 2.4.2, 2.8, 2.10.1, 2.12.1, 2.12.2,
# 2,12,3, 2.15, 2.19.2, 2.23, 3.7.1, 3.7.2, 3.8.1, 3.8.2, 5.7, 5.9.1
# Maybe reliability: 1.3, 1.12.1, 2.2, 2.3, 2.19.1, 2.20, 3.2.1, 3.5, 5.1.1, 
# 5.1.2, 5.4, 5.5.1, 5.5.2
# Maybe factor: 1.3, 1.12.1, 2.3, 2.19.1, 2.20, 3.2.1, 3.5, 5.1.1, 5.1.2, 5.4,
# 5.5.1, 5.5.2

## ML 1
Data_ML1 <- read.spss("Data/LocalInputData/MLRetrievedData/Full_Dataset_De-Identified.sav", 
                      to.data.frame = TRUE, use.value.labels = FALSE)


## ML 2
# 2.2
Data_2.2 <- read.csv("Data/LocalInputData/MLRetrievedData/Kay_1_study_global_include_all_CLEAN_CASE.csv")
# 2.3
Data_2.3 <- read.csv("Data/LocalInputData/MLRetrievedData/Alter_1_study_global_include_all_CLEAN_CASE.csv")
# 2.4.1
Data_2.4.1 <- read.csv("Data/LocalInputData/MLRetrievedData/Graham_1_study_global_include_all_CLEAN_CASE.csv")
# 2.4.2
Data_2.4.2 <- read.csv("Data/LocalInputData/MLRetrievedData/Graham_2_study_global_include_all_CLEAN_CASE.csv")
# 2.8.2
Data_2.8.2 <- read.csv("Data/LocalInputData/MLRetrievedData/Inbar_1b_study_global_include_all_CLEAN_CASE.csv")
# 2.10.1
Data_2.10.1 <- read.csv("Data/LocalInputData/MLRetrievedData/vanLange_1_study_global_include_all_CLEAN_CASE.csv")
# 2.12
Data_2.12 <- read.csv("Data/LocalInputData/MLRetrievedData/Anderson_1_study_global_include_all_CLEAN_CASE.csv")
# 2.15
Data_2.15 <- read.csv("Data/LocalInputData/MLRetrievedData/Giessner_1_study_global_include_all_CLEAN_CASE.csv")
# 2.19
Data_2.19.1 <- read.csv("Data/LocalInputData/MLRetrievedData/Savani_3a_study_global_include_all_CLEAN_CASE.csv")
# 2.20
Data_2.20 <- read.csv("Data/LocalInputData/MLRetrievedData/Norenzayan_1_study_global_include_all_CLEAN_CASE.csv")
# 2.23
Data_2.23 <- read.csv("Data/LocalInputData/MLRetrievedData/Zhong_1_study_global_include_all_CLEAN_CASE.csv")


## ML 3
Data_ML3 <- read.csv("Data/LocalInputData/MLRetrievedData/ML3AllSitesandmTurk.csv")
# 3.5
Data_3.5 <- read.csv("Data/LocalInputData/MLRetrievedData/ML3StroopData.csv")


## ML 5
# 5,1
Data_5.1 <- read_excel("Data/LocalInputData/MLRetrievedData/ML5 Alb 5 Revised Protocol In Lab.xlsx")
# 5.4
Data_5.4 <- read.spss("Data/LocalInputData/MLRetrievedData/dataset_LoBue_raw.sav", 
                      to.data.frame = TRUE)
# 5.5.1 & 5.5.2
Data_5.5 <- read.csv("Data/LocalInputData/MLRetrievedData/Genova_ML5.csv")
# 5.7 
Data_5.7 <- read.csv("Data/LocalInputData/MLRetrievedData/ml5_computed_dataset.csv")
# 5.9.1
Data_5.9.1 <- read.csv("Data/LocalInputData/MLRetrievedData/ML5_fulldataset_with_suspicion.csv")



### Data that was coded based on the protocols and retrieved manuscripts.
# Data from initial coding
Coded_Data_Initial_raw <- read.csv("Data/LocalInputData/CodedData/Coded Data (Initial).csv")
# Data from revised coding schedule
Coded_Data_Revised_raw  <- read.csv("Data/LocalInputData/CodedData/Coded Data (Revised).csv")
# Data for added question indicating vignette (or similar) use for a question
Coded_Data_Vignette_raw <- read.csv("Data/LocalInputData/CodedData/Coded Data (Vignette Item).csv")



# Data Storing -----------------------------------------------------------------
open_data(data = Data_ML1, 
          filename = "Data/InputData/Data_ML1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.2, 
          filename = "Data/InputData/Data_2.2.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.3, 
          filename = "Data/InputData/Data_2.3.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.4.1, 
          filename = "Data/InputData/Data_2.4.1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.4.2, 
          filename = "Data/InputData/Data_2.4.2.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.8.2, 
          filename = "Data/InputData/Data_2.8.2.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.10.1, 
          filename = "Data/InputData/Data_2.10.1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.12, 
          filename = "Data/InputData/Data_2.12.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.15, 
          filename = "Data/InputData/Data_2.15.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.19.1, 
          filename = "Data/InputData/Data_2.19.1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.20, 
          filename = "Data/InputData/Data_2.20.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_2.23, 
          filename = "Data/InputData/Data_2.23.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_ML3, 
          filename = "Data/InputData/Data_ML3.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_3.5, 
          filename = "Data/InputData/Data_3.5.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_5.1, 
          filename = "Data/InputData/Data_5.1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_5.4, 
          filename = "Data/InputData/Data_5.4.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_5.5, 
          filename = "Data/InputData/Data_5.5.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_5.7, 
          filename = "Data/InputData/Data_5.7.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Data_5.9.1, 
          filename = "Data/InputData/Data_5.1.csv",
          codebook = NULL, value_labels = NULL, 
          load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 



open_data(data = Coded_Data_Initial_raw, 
          filename = "Data/InputData/Coded_Data_Initial_raw.csv",
  codebook = NULL, value_labels = NULL, 
  load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Coded_Data_Revised_raw, 
          filename = "Data/InputData/Coded_Data_Revised_raw.csv",
  codebook = NULL, value_labels = NULL,
  load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 

open_data(data = Coded_Data_Vignette_raw, 
          filename = "Data/InputData/Coded_Data_Vignette_raw.csv",
  codebook = NULL, value_labels = NULL,
  load_expression = read.csv(file = filename, stringsAsFactors = FALSE)) 



