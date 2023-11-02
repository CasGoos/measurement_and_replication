# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data. When starting out, this project will be set up to generate
# a fake dataset fro the pre-registration.

# set-up -----------------------------------------------------------------------
library(worcs) # reproducible workflow template package
set.seed(30102023) # seed for random number generators


# Data-generating --------------------------------------------------------------


# Dataframe Creation -----------------------------------------------------------


# Data Storing -----------------------------------------------------------------
# replace iris with your own dataframe
open_data(data = iris, filename = paste0(paste0(
  "Data/AnalysisData/", deparse(substitute(iris))), ".csv"),
  codebook = paste0(paste0(
    "Data/AnalysisData/codebook_", deparse(substitute(iris))), ".Rmd"),
  value_labels = paste0(paste0(
    "Data/AnalysisData/value_labels_", deparse(substitute(iris))), ".yml")) 
