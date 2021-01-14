# Select dependencies
library(tidyverse)
library(dplyr)

# Set working directory
setwd("C:/Users/renha/OneDrive/Documents/DABC Classwork/Module_15/MechaCar_Statistical_Analysis")


##### Deliverable 1 #####

# Import dataset
MechaCar <- as.data.frame(read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F))

# Linear regression
model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)

# Summary
summary(model1)


##### Deliverable 2 #####

# Import dataset
suspension <- as.data.frame(read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F))

# total summary
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep')

# lot summary
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI, na.rm = TRUE),.group ='keep')

##### Deliverable 3 #####
#test sample
test_table <- suspension %>% sample_n(50)

# All lots
t.test((test_table$PSI), mu=mean(suspension$PSI))

# Lot 1
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot == "Lot1"),suspension$PSI)

# Lot 2
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot == "Lot2"),suspension$PSI)

# Lot 3
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot == "Lot3"),suspension$PSI)