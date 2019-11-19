#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")

#first for Timema cristinae

setwd("C:/Users/Micko/Desktop/1-Master project/Data/vcftools/")

dat <- read.delim("tce.result.weir.fst", sep = "\t", header = TRUE)
head(dat)
#new <- dat[dat$WEIR_AND_COCKERHAM_FST!='NaN',]
hist(dat$WEIR_AND_COCKERHAM_FST, main = "FSTs T. cristinae", breaks = 100, xlab = "FSTs" )
summary(dat)
#hist(new$WEIR_AND_COCKERHAM_FST, main = "FSTs T. cristinae", breaks = 100, xlab = "FSTs" )
#summary(new)
quantile(dat$WEIR_AND_COCKERHAM_FST, 0.95)


#second for Timema californicum

setwd("C:/Users/Micko/Desktop/1-Master project/Data/vcftools/")

dat1 <- read.delim("tcm.result.weir.fst", sep = "\t", header = TRUE)
head(dat1)
#new <- dat[dat$WEIR_AND_COCKERHAM_FST!='NaN',]
hist(dat1$WEIR_AND_COCKERHAM_FST, main = "FSTs T. californicum", breaks = 100, xlab = "FSTs" )
summary(dat1)
#hist(new$WEIR_AND_COCKERHAM_FST, main = "FSTs T. californicum", breaks = 100, xlab = "FSTs" )
#summary(new)
quantile(dat1$WEIR_AND_COCKERHAM_FST, 0.95)
