#Using parkages
library(stats)
library(dplyr)

#Loading iris dataset
data("iris")
str(iris)

#Viewing iris dataset
View(iris)

#1. Data Summarization
#Checking for missing values
sum(is.na(iris))

head(iris, 4)
tail(iris, 4)

sepal <- iris$Sepal.Length

mean(sepal)
median(sepal)
min(sepal)
max(sepal)
sum(sepal)
sd(sepal)
var(sepal)
quantile(sepal)

summary(iris)
summary(iris$Sepal.Length)
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)
summary(iris$Species)

mean("iris")

#Perform skim to display summary statistics
skim(iris)

#Grouping data by species then perform skim
iris%>% 
  dplyr::group_by(Species)%>%
  skim()

#2. Data visualization
str(iris)
species <- iris$Species

#Numeric data - Histogram
hist(sepal,xlab = "Sepal Length" ,col = "blue")

#Scatter plot 
plot(iris$Sepal.Width, iris$Sepal.Length,
     xlab = " Sepal Width",
     ylab = "Sepal Lenght", 
     col = "blue")

#Categorical or Quantitative data - Barplot
barplot(table(species),xlab = "Species" ,col = "blue")

#3. Data Normalization
#Selecting all numeric variables in the dataset
iris_numeric <- select(iris,c(Sepal.Length, Sepal.Width,
                              Petal.Length, Petal.Width))

#Normalizing dataset(Z-scores)
zscore_iris = scale(iris_numeric)

#Checking all the variables converted to z-score
View(zscore_iris)
