#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")
setwd("C:/Users/Micko/Desktop/dve/m")
read.table("populations.fst_1-2.tsv") -> tcefst
tcefst
hist(tcefst$V8, main = "FSTs T. californicum", breaks = 100, xlab = "FSTs" )


