# MechaCar Statistical Analysis

## Linear Regression to Predeict MPG
[LM~MPG]!()

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Given the fv=ive variables to predict mpg for MechaCar prototypes, the vehical length, vehical weight, and ground clearance are statistically significant predictors ot mpg at the 0.05 level. 

- Is the slope of the linear model considered to be zero? Why or why not?
The slope  predicted by the model is not zero since the p-value is less than significance level.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model effectively predicts the mpg of MechaCar prototypes since the p-value is less than 0.05. The R^2 value also indicates a efficiency of 71%. 


## Summary Statistics on Suspension Coils
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Reveiwing the Total Summary below, the variance is 62.3, which is less than 100 for all manufacturing lots in total, meaning the suspension coils collectively meet design specifications. However, while reviewing the Lot Summary below, only Lot 1 and 2 meet the design specifications with a variance less than 100 lbs/in^2.

### Total Summary
[D2-TotalSummary]!()

### Lot Summary
[D2-LotSummary]!()


## T-Tests on Suspension Coils
- Determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
Reviewing the T-test results below, the lots all together are not statistically different at the 0.05 level from the population mean of 1,500 lbs/in^2 as the p-value is greater than0.05 at 0.535. Looking at each individual lot, the p-values are smaller, but still not statistically significant at the 0.05 level, meaning we fail to reject the null hypothesis that the lots are the same as the poulation mean of 1,500 lbs/in^2. 

[D3-TTest]!()

## Study Design: MechaCar vs Competition
To determine how MechaCar compares to the competiton, I would use T-tests to compare variables such as average mpg, average cost, or average safty rating between the two companies to determine if the samples are statistically different from one another. This would help determine if MechaCar is statistically different from a competitor on each of these variables. We would require a breakdown of the mpg, cost, and safety rating for each model or prototype of MechaCar and the competator. 