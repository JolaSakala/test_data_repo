library(readr)
dataset <- read_csv("C:/Users/JAX/R_workdir/hw1_data.csv", 
                      +     trim_ws = FALSE)
View(dataset)

#https://www.coursera.org/learn/r-programming/exam/lB1sR/week-1-quiz
#11
names(dataset)

#12
head(dataset, 2)

#13
nrow(dataset)

#14
tail(dataset, 2)

#15
dataset[47, "Ozone"]


#16
summary(dataset$Ozone)
summary(!is.na(dataset$Ozone))

#17
mean(dataset$Ozone, na.rm = TRUE)

#18
y <- dataset$Ozone > 31 & dataset$Temp > 90
newset <- dataset[y,]
mean(newset$Solar.R, na.rm = TRUE)

#19
sesi <- dataset$Month == 6
month6 <- dataset[sesi,]
mean(month6$Temp)

#20
penki <- dataset$Month == 5
may <- dataset[penki,]
max(may$Ozone, na.rm = TRUE)

