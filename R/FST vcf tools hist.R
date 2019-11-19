#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")

#first for Timema cristinae

setwd("C:/Users/Micko/Desktop/1-Master project/Data/R/fst/tce")

dat <- read.delim("out.fst", sep = "\t", header = TRUE)
new <- dat[dat$WEIR_AND_COCKERHAM_FST!='NaN',]
#hist(dat$WEIR_AND_COCKERHAM_FST, main = "FSTs T. cristinae", breaks = 100, xlab = "FSTs" )
#summary(dat)
hist(new$WEIR_AND_COCKERHAM_FST, main = "FSTs T. cristinae", breaks = 100, xlab = "FSTs" )
summary(new)
quantile(new$WEIR_AND_COCKERHAM_FST, 0.95)


#second for Timema californicum

setwd("C:/Users/Micko/Desktop/1-Master project/Data/R/fst/tcm")

datm <- read.delim("tcm.result.weir.fst", sep = "\t", header = TRUE)
#hist(datm$WEIR_AND_COCKERHAM_FST, main = "FSTs T. californicum", breaks = 100, xlab = "FSTs" )
#summary(datm)
newm <- datm[datm$WEIR_AND_COCKERHAM_FST!='NaN',]
hist(newm$WEIR_AND_COCKERHAM_FST, main = "FSTs T. californicum", breaks = 100, xlab = "FSTs" )
summary(newm)
quantile(newm$WEIR_AND_COCKERHAM_FST, 0.95)
