#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")

#first for Timema cristinae 10k then 1k

setwd("C:/Users/Micko/Desktop/1-Master project/Data/FST_TD_EXPESSION//")

dat <- read.delim("TCE_td.txt", sep = "\t", header = TRUE)
head(dat)
#dat<-as.data.frame(dat)
#new <- dat[dat$TajimaD!='NaN',]
hist(dat$TajimaD, main = "TD by genes T. cristinae", breaks = 300, xlab = "Tajima's D" )
summary(dat)
#quantile(new$TajimaD)


#Timema californicum 10k, 1k 

setwd("C:/Users/Micko/Desktop/1-Master project/Data/FST_TD_EXPESSION//")

dat2 <- read.delim("TCM_td.txt", sep = "\t", header = TRUE)
dat2
head(dat2)
#dat<-as.data.frame(dat)
#new2 <- dat2[dat2$TajimaD!='NaN',]
hist(dat2$TajimaD, main = "TD by genes T. californicum", breaks = 300, xlab = "Tajima's D" )
summary(dat2)
#quantile(new2$TajimaD)
