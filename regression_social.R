# Import functions
library(MASS)

# Append both train and test data set together

# Read data-set to your memory
complete <- read.csv("complete.csv", stringsAsFactors = TRUE)

# View the dataset
head(complete)

# Build a simple linear regression model
lm.fit <- lm(employed_social ~ robots_social, data = complete)
attach(complete)
lm.fit <- lm(employed_social ~ robots_social)

# Output basic information about the model
lm.fit
summary(lm.fit)
names(lm.fit)
coef(lm.fit)
confint(lm.fit)

# Make predictions
predict(lm.fit, data.frame(robots_social = (c(5, 10, 15))),
        interval = "confidence")
predict(lm.fit, data.frame(robot_social = (c(5, 10, 15))),
        interval = "prediction")

# Plot the least squares regression line
plot(employed_social, robots_social)
abline(lm.fit)

# Use the LOOCV
glm.fit <- glm(employed_social ~ robots_social, data = complete)
coef(glm.fit)
coef(lm.fit)

# Import the cv.glm() function
library(boot)
cv.err <- cv.glm(complete, glm.fit)

# Validate the model
cv.err$delta
cv.error <- rep(0, 4)
for (i in 1:4) {
  glm.fit <- glm(employed_social ~ poly(robots_social, i), data = complete)
  cv.error[i] <- cv.glm(complete, glm.fit)$delta [1]
  }
cv.error