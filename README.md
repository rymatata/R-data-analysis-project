# Analysis of Data Collected on Forest Fires
Through the utilization of R, this project aims to analyze climate and meteorologic data gathered from burned areas within a forest in the northeast region of Portugal. Weather factors such as temperature and air humidity play a significant role in determining whether any future natural event/weather change may be occurring. Offering tell-tale signs of things to come via specific conditions or occurences. Thus, the analysis of this data will be used to determine the effectiveness of using meteoroligical data to predict forest fires within a designated area through the form of a focused research question.

The code and results can be found within this repository in their respective folders.

# Research Question
## Can meteorological variables accurately predict logarithmically transformed burned areas and which predictors are most significant?
In order to answer this question, various different plots and analyses such as histograms, residual comparisons, and R-squared tests will be leveraged within R.

### Variables
| Variable Name  | Description |
| ------------- | ------------- |
| X  | X-axis spatial coordinate within the Montesinho Park map  |
| Y  | Y-axis spatial coordinate within the Montesinho Park map  |
| Month  | Month of the year  |
| Day  | Day of the week  |
| FFMC  | Fine Fuel Moisture Code; numeric rating of moisture content of litter along with other fine fuels  |
| DMC  | Duff Moisture Code; numeric rating of average moisture content for moderate depth organic layers that are loosely compacted  |
| DC  | Drought Code; numeric rating of the average moisture content for deep, compact organic layers  |
| ISI  | Initial Spread Index; numeric rating of the expected rate of fire spread  |
| Temp  | Temperature in Celsius degrees  |
| RH  | Relative humidity in %  |
| Wind  | Wind speed in km/h  |
| Rain  | Outside rain in mm/m^2  |
| Area  | The burned area of the forest in ha  |

The four major variables that will be scrutinized in this analysis are "Temp", "RH", "Wind", and "Rain".

### Prerequisites
Over the course of data collection, the burned area had values that ranged anywhere from 0.0 to 1090.84. However, the data had been heavily skewed towards 0.0, which suggested heavy outliers. Thus, before any analysis could be conducted, the data for "Area" would need to be logarithmically transformed.

# Results
Wind speed was found to have the largest positive effective (deemed most significant of the four) and strongest correlation of 0.0670 while outside rain was least significant. Multiple R-squared value shows only 1.04% of variance in logarea explained. The adjusted R-squared is also very low, which suggests poor ability in predicting values. All correlations found were very weak, indicating that each of the weather observations individually have minimal linear relationships with the area being burned via forest fires.

# Conclusion
The meteorological variables studied ("Temp", "RH", "Wind", and "Rain") have limited ability to accurately predict logarithmically transformed burned areas. Out of the variables testsd, wind was the most significant predictor. Due to the low percentage of variance in logarea explained, this analysis may prove to be more effective over a smaller area of coverage or by creating more sections to collect data from. The vast area of forest being covered introduces data values that cause the dataset to be heavily skewed as large sections may indicate a fire has occurred, however, only a small area of that section may actually be on fire.

# Reference
Cortez, P. & Morais, A. (2007). Forest Fires [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5D88D.
