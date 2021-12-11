#Import dataset (code below only works if file is in working directory)
complete <- read.csv('complete.csv')

#Create scatterplot
plot(complete$employed_social~complete$robots_manu,main='The Employed and Robots',xlab='The Employed',ylab='Robots',pch=20)

#Build linear model
mymodel <- lm(complete$employed_social~complete$robots_manu)

#Confirm assumptions
qqnorm(mymodel$residuals)
qqline(mymodel$residuals,col='red')

plot(mymodel$fitted.values,mymodel$residuals,xlab='Fitted Values',ylab='Residuals')
abline(h=0,col='red')

#View model results
summary(mymodel)

#Plot fitted regression line
plot(complete$employed_social~complete$robots_manu,main='The Employed and Robots',xlab='The Employed',ylab='Robots',pch=20)
abline(mymodel,col='blue')
