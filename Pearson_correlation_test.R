# Create two vectors of data
test_scores <- c(55,65,68,70,70,72,77,80,80,85,85,85,85,85,85,86,87,87,87,91,91,
                 91,93,96,97)
study_hours <- c(107,
                 93,
                 45,
                 50,
                 112,
                 150,
                 120,
                 110,
                 130,
                 61,
                 74.5,
                 75,
                 79,
                 96,
                 122,
                 131,
                 40,
                 63.5,
                 81.5,
                 22.5,
                 64,
                 65,
                 57,
                 72,
                 40
)

# Calculate the Pearson correlation coefficient and p-value
cor.test(test_scores, study_hours, method = "pearson")

plot(study_hours,test_scores)
data <- as.data.frame(test_scores)
data$study_hours <- study_hours
model <- lm(test_scores ~ study_hours , data = data)
summary(model)
library(ggplot2)
p <- ggplot(data=data, aes(x=study_hours, y=test_scores)) 
p <- p + geom_point()
p
