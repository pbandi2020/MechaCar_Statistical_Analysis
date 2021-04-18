# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

1. **The variables that provided a non-random amount of variance** - The vehicle length and the ground_clearance. Both of these have extremely small p-value meaning that they had a high level of significance. It also should be noted that the intercept as had a high level of significance meaning that there are still other factors contributing to the variance of the miles per gallon of the MechaCar.
2. **The slope of the linear model is not considered to be zero** - This is because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. If none of the independent variables had an effect on the dependent variable then the linear regression would result in a near zero slope.
3. **Does the linear model predicts the mpg of the MechaCare** - at 0.7149 mean that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 71 times. This means that the model would be considered effective.

![mpg_linear_regression](https://github.com/pbandi2020/MechaCar_Statistical_Analysis/blob/main/LinearRegressionPredictMPG.png)
## Summary Statistics on Suspension Coils
1. **Total summary** - The current variance is approximately 76.23 PSI meaning that is does meet the design specification.
2. **Lot Summary** -  When looking at the lots individuals, the first two lotas meet the design specification at a varaince of approximately 1.14 PSI and 10.13 PSI respectfully, but the third lot does not. This is becasue the third lot's variance is approximately 220.01 PSI, exceeding the design specification by more than double the alotted amount. Therefore, the manufacturing team should work with the cars in lots 1 and 2 compared to those in lot 3.

![Total Summary](https://github.com/pbandi2020/MechaCar_Statistical_Analysis/blob/main/TotalSummary.png)

![Lot Summary](https://github.com/pbandi2020/MechaCar_Statistical_Analysis/blob/main/LotSummary.png)

##T-Test on Sustension Coils
By using a significance level, 95% of the time this tests results would be true, I tested to see if any of the three groups had a statistical difference from the mean of 1,500 PSI. After running the tests, all three p-values where much greater than .05 meaning that I would fail to reject that there is a statistical difference between the three groups and the population mean.

