# MechaCar_Statistical_Analysis
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

Following project is a perfect example of how to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.
This is the part of csv data.
<img width="740" alt="MechaCar csv " src="https://user-images.githubusercontent.com/106944351/191880865-46d5a74c-1217-486c-83dd-add4b1cf0eb1.png">


## Linear Regression to Predict MPG
By performing linear regression using the lm() function, we can get following values.
<img width="888" alt="lm() function" src="https://user-images.githubusercontent.com/106944351/191880633-1ed1539f-ef6f-48c4-aac2-82daa962b9d4.png">

To determine the p-value and the r-squared value for the linear regression model, one needs to use summary() function.
<img width="878" alt="summary() function" src="https://user-images.githubusercontent.com/106944351/191880730-59a119e6-c18b-45f0-a997-3e6833b1b3d4.png">

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle Length with p-value 2.60e-12 and 
Ground Clearance with p-value 5.21e-08  provides a non-random amount of variance to the mpg values in the dataset

2) Is the slope of the linear model considered to be zero? Why or why not?
Slope of the linear model is -1.040e+02. So, it will not be considered as zero.
f the slope were zero, then there would be no correlation between mpg and the independent variables. However, we have Multiple R-squared = 0.7149, which indicates a strong correlation. 

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
R-squared value is 71%, which means roughly ~71% of the time the model will predict mpg values correctly. There are probably other factors that were not captured in the datasaet that contribute to the mpg variability of the MechaCar prototypes.

## Summary Statistics on Suspension Coils
total_summary: <img width="354" alt="Total_Summary" src="https://user-images.githubusercontent.com/106944351/191880393-2288a4ae-eb09-4e86-bd0f-1b5caa1cb789.png">

lot_summary: <img width="501" alt="Lot_Summary" src="https://user-images.githubusercontent.com/106944351/191880444-854f4eb2-f212-4575-8fc1-469aab7bfa7b.png">

1) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- If we consider the total_summary, variance is below 100 which is 62.29. However, if we consider variance of every single lot, lot 3 is above 100 which is 170. Lot 1 - 0.980 and Lot 2 -  7.47 are within the limit.

## T-Tests on Suspension Coils
Determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
Following images shows t-tests of 3 lots.

<img width="789" alt="Deliverable_3" src="https://user-images.githubusercontent.com/106944351/191881201-8c59acd9-35f3-48cf-822f-a565527c959d.png">

Lot 1 and Lot 2 are both within design specifications and have hnearly the same exact mean and median. Lot 3 shows the most variance and exceeds the manufacturers specs.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

1) What metric or metrics are you going to test?
- I would prefer to consider horsepower metric.

2) What is the null hypothesis or alternative hypothesis?
- Null hypothesis will be, all cars will have same horsepower. The alternative hypothesis will be, every different car will have different horse power.

3) What statistical test would you use to test the hypothesis? And why?
- I would perform t-test. It will compare the horsepower of every type of car such as different cars of different competitors.

4) What data is needed to run the statistical test?
- Vehicle list such as type of vehicle of each competitor, fuel efficiency.
