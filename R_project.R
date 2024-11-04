#Unzip the file
unzip("C:/Users/amit5/Downloads/forest+fires.zip",exdir="C:/Users/amit5/Downloads/forest+fires")
files<-list.files("C:/Users/amit5/Downloads/forest+fires",full.names=TRUE)
print(files)
#Read the file
data1<-read.csv("C:/Users/amit5/Downloads/forest+fires/forestfires.csv")
print(data1)
#Use some basic functions on dataset
library(dplyr)
dim(data1)
head(data1)
tail(data1)
str(data1)
glimpse(data1)
View(data1)
names(data1)
rownames(data1)
summary(data1)
#Access the column
data1$FFMC
#Access the specifies values
data1[c(2,3),c(1,4)]
data1[c("month","day")]
#Delete the multiple rows and columns
data1[-c(2,3),-c(1,4)]
#Add the new column 
data1$AB
data1$AB<-data1$FFMC+data1$DMC
data1
#Add the new row
PQ<-1:14
rbind(data1,PQ)
#Find the sum of null values
sum(is.na(data1))
#Plotting the box plot
data(data1)
plot<-boxplot(ISI~temp,
data=data1,
xlab="Values",
ylab="Frequency",
col="red",
border="black",
pch=15)
print(plot)

#Plotting the boxplot
data(data1)
boxplot(data1$RH,
data=data1,
xlab="Values",
ylab="Frequency",
col="cyan",
border="black",
pch=15)

#Plotting the histogram
hist(data1$DC,
     main = "Overlayed Histogram of DC and RH",  
     xlab = "Value",                                         
     ylab = "Frequency",
     col = "green",
     border = "black",
     breaks = 10)
hist(data1$RH,
     add = TRUE,               
     col = "pink",  
     border = "black",
     breaks = 5)
hist(data1$DC, 
     main = "Overlayed Histogram of DC and RH",
     xlab = "Value",
     ylab = "Frequency",
     col = rgb(0, 1, 0, 0.5),  # Semi-transparent green for DC
     border = "black",
     breaks = 10)

# Overlay the histogram for the RH variable
hist(data1$RH, 
     col = rgb(1, 0, 0, 0.5),  # Semi-transparent red for RH
     border = "black",
     breaks = 10,
     add = TRUE)  # Overlay on the previous histogram
