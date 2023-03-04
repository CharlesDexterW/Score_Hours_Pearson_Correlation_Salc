# Generate example data
set.seed(123)
studying_hours <- rnorm(50, mean = 20, sd = 5)
teacher_interventions <- rpois(50, lambda = 2)
test_scores <- 50 + 10 * studying_hours + 5 * teacher_interventions + rnorm(50, mean = 0, sd = 10)
data <- data.frame(studying_hours, teacher_interventions, test_scores)

# Fit multiple regression model
model <- lm(test_scores ~ studying_hours + teacher_interventions, data = data)
# View model summary
summary(model)

# In this example, we first generate some example data using the rnorm and rpois 
  #functions to simulate 50 observations of studying hours and teacher interventions, 
  #respectively. We then use these values, along with some added noise (rnorm) 
  #to generate a corresponding set of test scores. We store these values in a data 
  #frame called data.

#Next, we use the lm function to fit a multiple regression model, where the 
  #dependent variable is test_scores, and the independent variables are 
  #studying_hours and teacher_interventions. We store this model object in the 
  #variable model.

#Finally, we use the summary function to view a summary of the model's coefficients, 
#including their estimates, standard errors, t-values, and p-values. This output can 
#help us understand the strength and direction of the relationships between the variables, 
#as well as their statistical significance.