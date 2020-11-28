#Simple Regression Model in R

#Open the .csv file
df <- read.csv("test.csv")
head(df)

#Plot the values in the file
plot(df$Data1, df$Data2, pch = 16, cex = 1.3, col = "blue", 
     main = "Data2 vs Data1", 
     xlab = "Data1", 
     ylab = "Data2")

#Create the linear regression model
lm(df$Data1 ~ df$Data2)

#Generate the Regression line
abline(98.0054, 0.9528)

#Create the model
model <-  lm(df$Data2 ~ df$Data1)

#View the model
summary(model)

# Predict possible results
prediction <- predict(model)
prediction

#Plot
plot(df$Data1, df$Data2, pch = 16, cex = 1.3, 
     col = "blue", 
     main = "Data2 vs Data1", 
     xlab = "Data1", 
     ylab = "Data2")

#Build the Regression line
abline(lm(df$Data2 ~ df$Data1))

# Get the size of one of the data samples
num <- length(df$Data2)
num

#Generate a graph with residual values
for (k in 1: num)  
  lines(c(df$Data1[k], df$Data1[k]), 
        c(df$Data2[k], prediction[k]))

#Generating graphs with the distribution of Residuals
par(mfrow = c(2,2))
plot(model)
