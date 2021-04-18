#3 - import dplyr libary
library(dplyr)

#4 - Import the CSV file
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) # loading mpg dataset 


#5 - Linear exression using lm() function by passing all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg) # create linear regression

#6 - Summary function to determine the p-value & r-squares vallue
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)) # create linear regression
