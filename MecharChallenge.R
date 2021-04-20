#3 - import dplyr libary
library(dplyr)

#4 - Import the CSV file
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) # loading mpg dataset 


#5 - Linear exression using lm() function by passing all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg) # create linear regression

#6 - Summary function to determine the p-value & r-squares vallue
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)) # create linear regression

#Deliverable 2
#2 - Import the Suspension_coil.csv
sus_coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

#3 - Create a summary col to get the mean, median, variance & Standard deviation
total_summary <- sus_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

#4 - Create a lot_summary DF using group_by() & Summarize() function 
# to group each lot by mean, median, variance and SD
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

#Deliverable 3
?t.test()
t.test(x=sus_coils$PSI, mu=mean(sus_coils$PSI)) # t test n all cars' PSI with a mean of 1500
pop1 <- subset(sus_coils, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=pop1$PSI, mu=mean(sus_coils$PSI)) # t test on lot 1 cars' PSI with a mean of 1500
pop2 <- subset(sus_coils, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=pop2$PSI, mu=mean(sus_coils$PSI)) # t test on lot 2 cars' PSI with a mean of 1500
pop3 <- subset(sus_coils, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=pop3$PSI, mu=mean(sus_coils$PSI)) # t test on lot 3 cars' PSI with a mean of 1500
