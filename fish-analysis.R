.libPaths("C:/Users/jcastillo3/Documents/R/RLibrary")
library(tidyverse)
data <- read_csv("C:/Users/jcastillo3/Documents/R/2018-RClass/Class Work/gittutorial/Data/Gaeta_etal_CLC_data.csv")
source("C:/Users/jcastillo3/Documents/R/2018-RClass/Class Work/gittutorial/R/Themes.R.R")

data %>% 
  
  mutate(length_cat = case_when(length >= 200 ~ "big",
                                length < 200 ~ "small")) -> fishData

head(fishData)