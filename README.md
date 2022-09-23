# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG
1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle Length with p-value 2.60e-12 and 
Ground Clearance with p-value 5.21e-08  provides a non-random amount of variance to the mpg values in the dataset

2) Is the slope of the linear model considered to be zero? Why or why not?
Slope of the linear model is -1.040e+02. So, it will not be considered as zero.
f the slope were zero, then there would be no correlation between mpg and the independent variables. However, we have Multiple R-squared = 0.7149, which indicates a strong correlation. 

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
R-squared value is 71%, which means roughly ~71% of the time the model will predict mpg values correctly. There are probably other factors that were not captured in the datasaet that contribute to the mpg variability of the MechaCar prototypes.

## Summary Statistics on Suspension Coils
1) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils
total_summary:

lot_summary:

1) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
If we consider the total_summary, variance is below 100 which is 62.29. However, if we consider variance of every single lot, lot 3 is above 100 which is 170. Lot 1 - 0.980 and Lot 2 -  7.47 are within the limit.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

1) What metric or metrics are you going to test?
I would prefer to consider horsepower metric.

2) What is the null hypothesis or alternative hypothesis?
Null hypothesis will be, all cars will have same horsepower. The alternative hypothesis will be, every different car will have different horse power.

3) What statistical test would you use to test the hypothesis? And why?
I would perform t-test. It will compare the horsepower of every type of car such as different cars of different competitors.

4) What data is needed to run the statistical test?
Vehicle list such as type of vehicle of each competitor, fuel efficiency.
