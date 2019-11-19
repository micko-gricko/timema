#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")

#first for Timema cristinae 10k then 1k

setwd("C:/Users/Micko/Desktop/1-Master project/Data/vcftools/")

dat <- read.delim("out.Tajimae.D", sep = "\t", header = TRUE)
head(dat)
#dat<-as.data.frame(dat)
new <- dat[dat$TajimaD!='NaN',]
hist(new$TajimaD, main = "TD (10k) T. cristinae", breaks = 300, xlab = "Tajima's D" )
summary(new)
#quantile(new$TajimaD)


#Timema californicum 10k, 1k 

setwd("C:/Users/Micko/Desktop/1-Master project/Data/vcftools/")

dat2 <- read.delim("out.Tajimam.D", sep = "\t", header = TRUE)
dat2
head(dat2)
#dat<-as.data.frame(dat)
new2 <- dat2[dat2$TajimaD!='NaN',]
hist(new2$TajimaD, main = "TD (10k) T. californicum", breaks = 300, xlab = "Tajima's D" )
summary(new2)
#quantile(new2$TajimaD)
