#Loading all the necessary packagaes
library(ggplot2)
library(dplyr)
library(tidyverse)
library(readr)
library(tidyselect)

Commercial <- read.csv("ACTL3142Data.csv") #import the dataset


Insurance_by_car <- Commercial %>% 
  group_by(policy_id) %>% 
  summarise(AccidentCount = n())

#Comments to self - Getting accident count could be useful, 
#therefore sorting by policy id could be useful (how many accidents each vehicle has had)
# --> see patterns? idk need to understand the data properly!

#could compare postcodes as well? e.g. a certain postcode in a certain state could have more accidents 

#could also compare number of accidents given the year of production of each vehicle 

#could also conduct state wise analysis (i.e. NSW vehicles are more prone to VIC vehicles 
#i.e. have higher claims)

#can look ar externals as well (e.g. inflation rate, and thus relate it to insurance amount and frequency
#note: both are to be considered as mentioned in the assignment brief)


