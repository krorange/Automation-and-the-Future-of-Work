# Automation and the Future of Work
Author: Gyuri Kang

1. Project Description

Since the appearance of robot workers in the workplace, the labor market has been changing. Whether this is an opportunity for or a threat to human labor is controversial. In this regard, this project examines how automation will impact future job markets. Among all countries in the world, Republic of Korea (South Korea) has the highest ratio of robots to human workers. This indicates that Korea should take up the mission of setting an example for other countries by managing the risk of automation. However, compared to research on other nations, there is a remarkable lack of scholarly attention to the relationship between automation and the future of work in Korea. To contribute to the existing literature, the researcher analyzed two annual datasets on employment and robot adoption in Korea and built a predictive model based on the datasets. This project examines the potential relationship between robot adoption and labor market dynamics and ultimately aims at theorizing about future scenarios in the global job market.

2. How to use the project files

In the process of building the models, the data sets were split into the training set and the test set. The training set file includes the data of employed persons and operational stock of robots in social overhead capital and the data in household services. The test set file includes the data of employed persons and operational stock of robots in public services and the data in manufacturing. You can use the files to build two predictive models using R.
The machine learning algorithm used for the initial build is simple linear regression because it is the most useful in showing the correlation between two quantitative variables. The machine learning algorithm used for the subsequent build is multiple linear regression because there are more than one predictor variable in the datasets.
For model validation using R, the Leave-One-Out Cross-Validation approach was used because it can be automatically computed for any generalized linear model. The validation process is the continuation of each model build.

3. Conclusion

This project contributes to the research on the impact of automation on employment by studying the relationship between robot adoption and labor market dynamics in Korea. The visualizations reveal that public services and social overhead capital industries are growing, while household services and manufacturing industries are dying. On the other hand, robot adoption are decreasing in the public services and social overhead capital industries and increasing in the household services and manufacturing industries respectively. However, by modelling the data, the researcher found out that the correlation between the employed persons data and the operational stock of robots data does not mean causation. Instead, the two predictive models show that robotization may have a positive influence on employment. In other words, the increased robot adoption seems less likely to lead to unemployment, but to employment. This paper demonstrates how automation is and will be changing work.
