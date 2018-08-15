#Assignment 6.1

setwd("D:/Acadgild/sample dataset/bank")
getwd()
bankdata<-read.csv("D:/Acadgild/sample dataset/bank/bankp.csv")
head(bankdata)

#missing value
library(Amelia)
missmap(bankdata)  #visuals for missing value
saaply(bankdata, function(x) sum(is.na(x))
       
       #distrubution of clients based on job
       
       unique(bankdata$job)
       length(unique(bankdata$job))
       
       count<- table(bankdata$job)
       count
       barplot(count)
       
       
       #corelation between job and marital status
       
       count<- table(bankdata$marital, bankdata$job)
       count
       barplot(count)
       barplot(count, main="relation", xlab = "marital status", col=c("blue","orange","green"), legend=rownames(count))
       
       
       
       #Association between job & education
       
       count<- table(bankdata$education, bankdata$job)
       count
       barplot(count, main="relation", xlab = "marital status", col=c("blue","orange","green", "red"), legend=rownames(count), beside=T)
       