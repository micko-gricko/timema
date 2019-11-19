#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")

#first for Timema cristinae 10k then 1k

setwd("C:/Users/Micko/Desktop/1-Master project/Data/R/plot tajimas/tce/")

dat <- read.delim("out.Tajima.D", sep = "\t", header = TRUE)
head(dat)
#dat<-as.data.frame(dat)
new <- dat[dat$TajimaD!='NaN',]
hist(new$TajimaD, main = "TD (10k) T. cristinae", breaks = 300, xlab = "Tajima's D" )
summary(new)
#quantile(new$TajimaD)

dat1 <- read.delim("out.Tajima1k.D", sep = "\t", header = TRUE)
head(dat1)
#dat<-as.data.frame(dat)
new1 <- dat1[dat1$TajimaD!='NaN',]
head(new1)
hist(new1$TajimaD, main = "TD (1k) T. cristinae", breaks = 300, xlab = "Tajima's D" )
summary(new1)
#quantile(new1$TajimaD)

#Timema californicum 10k, 1k 

setwd("C:/Users/Micko/Desktop/1-Master project/Data/R/plot tajimas/tcm/")

dat2 <- read.delim("out.Tajima.D", sep = "\t", header = TRUE)
dat2
head(dat2)
#dat<-as.data.frame(dat)
new2 <- dat2[dat2$TajimaD!='NaN',]
hist(new2$TajimaD, main = "TD (10k) T. californicum", breaks = 300, xlab = "Tajima's D" )
summary(new2)
#quantile(new2$TajimaD)


dat3 <- read.delim("out.Tajima1k.D", sep = "\t", header = TRUE)
head(dat3)
dat3
#dat<-as.data.frame(dat)
new3 <- dat3[dat3$TajimaD!='NaN',]
head(new3)
hist(new3$TajimaD, main = "TD (1k) T. californicum", breaks = 300, xlab = "Tajima's D" )
summary(new3)
#quantile(new3$TajimaD)