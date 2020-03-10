library(graphics)
#Scater Plot
x <- rnorm(50)
y <- rnorm(50)
plot(x,y )

#lineplot
head(cars)
plot(cars$speed, cars$dist,type= "l", main = "Speed and Distance", xlab = "Speed of car", ylab = "speed")

#barplot
head(mtcars)
counts <- table(mtcars$gear)
barplot(counts, main = "Cardistribution", xlab = "number of gear")

#histogram
head(cars)
hist(cars$dist, breaks = 12, col = "blue", xlab="Distance")

#boxplot
head(mtcars)
attach(mtcars)
table(cyl)
boxplot(mpg~cyl, data = mtcars, main = "Box Plot for Disp", xlab = "Number of Cylinder", ylab= "Miles pre gallon")

#Pie Char 2d
slices <- c(10,4,24,14)
lbls <- c("US", "UK","Australia", "Germany")
pie(slices,labels = lbls, main = "Pie Chart of Countries")

#Pie Cahr 3d
library(plotrix)
slices <- c(10,4,33,14)
lbls <- c("US", "UK","Australia", "Germany")
pie3D(slices,labels = lbls, main = "Pie Chart of Countries")

#qqPlot
x <- rnorm(500,2,3)
qqnorm(x)
qqline(x)