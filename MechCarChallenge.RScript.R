library(dplyr)

# Deliverable 1 - Linear Regression to Predict MPG
# Import and read CSV
MechaCar <- read.csv("../Resources/MechaCar_mpg.csv")
head(MechaCar)

# Perform linear regression using linear model [the lm() function.]
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar))

# Deliverable 2 - Create Visualizations for the Trip Analysis
# Import and read CSV
suspension <- read.csv("../Resources/Suspension_Coil.csv")
head(suspension)

# Write an RScript that creates a total_summary dataframe using the summarize() function 
#to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
#mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Mean <- mean(suspension$PSI)
Median = median(suspension$PSI)
Variance = var(suspension$PSI)
Sd = sd(suspension$PSI)
print(Mean)
print(Median)
print(Variance)
print(Sd)

total_summary <- data.frame(Mean,Median,Variance,Sd)
print(total_summary)

# # RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Sd=sd(PSI), .groups = 'keep')
print(lot_summary)

# Deliverable 3 - T-Tests on Suspension Coils
# Write t.test() function to determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch.
t.test(log10(suspension$PSI), mu=1500)

# Write t-test to determine if the PSI for each manufacturing lot is statistically different from 
# the population mean of 1,500 pounds per square inch.
t.test(subset(suspension,Manufacturing_Lot =="Lot1")$PSI, mu = 1500)
t.test(subset(suspension,Manufacturing_Lot =="Lot2")$PSI, mu = 1500)
t.test(subset(suspension,Manufacturing_Lot =="Lot3")$PSI, mu = 1500)