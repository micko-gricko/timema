#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")
setwd("C:/Users/Micko/Desktop/tce depth")

for (i in seq(40, 42)){
filename = paste('tce_f', as.character(i), '_genome.txt', sep = '')


read.table(filename) -> tc_f1
#hist(tc_f1$V3, main = "Depth per sample", breaks = tc_f1$V2, xlab = "Depth" )

tail(tc_f1)
## give some column names
colnames(tc_f1)   <- c("seq","cov", "N","Tsites","freq")

## make freq numeric
tc_f1$freq <- as.numeric(as.character(tc_f1$freq))

# plot freq
#make new frequency
tc_f1$new_freq <- tc_f1$N / (tc_f1$Tsites - tc_f1[1,3])
image_name = paste('tc_f', i, '_plot.jpeg', sep = '')
jpeg(file = image_name, height = 800, width = 600)
barplot(tc_f1$new_freq[2:dim(tc_f1)[1]], names.arg=tc_f1$cov[2:dim(tc_f1)[1]] , xlim=c(0,100))
dev.off()
}

