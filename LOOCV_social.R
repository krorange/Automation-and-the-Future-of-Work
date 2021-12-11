# Import functions
library(MASS)

# Append both train and test data set together

# Read data-set to your memory
complete <- read.csv("complete.csv", stringsAsFactors = TRUE)

# View the dataset
head(complete)

# R program to implement Leave one out cross validation

# defining training control as Leave One Out Cross Validation
train_control <- trainControl(method = "LOOCV")

# training the model by assigning employed_social column as target variable and rest other column as independent variable
model <- train(employed_social ~., data = complete,
               method = "lm",
               trControl = train_control)

# printing model performance metrics along with other details
print(model)
