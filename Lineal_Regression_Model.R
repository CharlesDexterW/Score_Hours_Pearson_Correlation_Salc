# Read in the dataset
data <- read.csv("dataset.csv")

# Fit the linear regression model
model <- lm(Test_Score ~ Study_Hours, data = data)

# Print the model summary
summary(model)


# Load the ggplot2 library
library(ggplot2)

# Read in the dataset
data <- read.csv("dataset.csv")

# Fit the linear regression model
model <- lm(Test_Score ~ Study_Hours, data = data)

# Create a scatter plot with regression line
ggplot(data, aes(x = Study_Hours, y = Test_Score)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(x = "Study Hours", y = "Test Score", title = "Study Hours vs. Test Score")