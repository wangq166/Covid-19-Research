#### Preamble ####
# Purpose: Clean the data downloaded from "Turkey: DHS, 1998 - Final Report"
# Author: Qiuhan Wang
# Data: 17 April 2022
# Contact: qiuhan.wang@mail.utoronto.ca 
# License: MIT




#### Workspace setup ####

# Load all the packages
library(reshape2)
library(stringi)
library(pointblank)
library(tidyverse)

#import data from inputs folder and name it as Covid_19.csv
Covid_19 <- read.csv("inputs/data/Covid_19.csv")

#filter the blank in the column "Age_Group" and rename the new data as raw_data2
raw_data2 <- Covid_19 %>%
  filter(`Age_Group` != "")

#save the document as cleaned_data.csv in data section of inputs
write_csv(raw_data2,"inputs/data/cleaned_data.csv")
