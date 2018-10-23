.libPaths("C:/Users/jcastillo3/Documents/R/RLibrary")
library(tidyverse)
# source("C:/Users/jcastillo3/Documents/R/2018-RClass/Class Work/gittutorial/R/Themes.R")

source("R/Themes.R") # this should work as well

# data <- read_csv("C:/Users/jcastillo3/Documents/R/2018-RClass/Class Work/gittutorial/Data/Gaeta_etal_CLC_data.csv")

data <- read_csv("Data/Gaeta_etal_CLC_data.csv") # so should this


data %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fishData

head(fishData)


ggplot() +
  geom_histogram(data = fishData, aes(x=scalelength, fill = length_cat)) +
                  facet_wrap(~length_cat, nrow = 1) +
                   theme_jaz()


## Chris's modifications

ggplot() +
  geom_histogram(data = fishData, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
