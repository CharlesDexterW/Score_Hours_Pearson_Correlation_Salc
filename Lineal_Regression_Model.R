# Read in the dataset
library(readxl)

data <- read_excel("Salc_Students_Data.xlsx")
str(data)
# Fit the linear regression model
model <- lm(Test_Score ~ Total_Study_Hours, data = data)

# Print the model summary
summary(model)


# Load the ggplot2 library
library(ggplot2)

# Fit the linear regression model
model <- lm(Test_Score ~ Total_Study_Hours, data = data)

# Create a scatter plot with regression line
ggplot(data, aes(x = Total_Study_Hours, y = Test_Score)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Study_Hours", y = "Test Score", title = "Study Hours vs. Test Score")

# Calculate mean and standard deviation of Test_Score
mean_score <- mean(data$Test_Score)
sd_score <- sd(data$Test_Score)

# Create a histogram with normal distribution curve
ggplot(data, aes(x = Test_Score, y = after_stat(density))) +
  geom_histogram(color = "black", fill = "white", bins = 20) +
  stat_function(fun = dnorm, args = list(mean = mean_score, sd = sd_score), color = "red", linewidth = 1) +
  labs(x = "Test Score", y = "Density", title = "Distribution of Test Scores")

