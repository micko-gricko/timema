#install.packages("installr")
#library(installr)
#updateR()
#install.packages("hierfstat")
library("hierfstat")
install.packages("adegenet")
library("adegenet")
setwd("C:/Users/Micko/Desktop/bats")

test_micro <- read.fstat.data("microsat_trimm.dat", na.s ="0")
test_rad <- read.fstat.data("RADfeb14.dat", na.s ="NA")
populations<-read.table("pop.txt")
popnam<-populations[,2]
names(test_micro)
ind.col <- substr(popnam, 1, 2)
popnam23 <-rainbow(7)[as.factor(ind.col)]
dim(test_micro)
micsta <- basic.stats(test_micro, diploid=TRUE)
head(micsta$Ho)
pdf(file = "fileBoxplot.pdf",  width= 10, height= 10)
boxplot(micsta$Ho, col='red')
boxplot(micsta$Hs, col='red')
boxplot((micsta$Ho)-(micsta$Hs), col='red')
#PLOT FOR HS-HO MICROSATELLITES
plot(colMeans(micsta$Hs),colMeans(micsta$Ho), xlim=c(0.3, 0.8), ylim=c(0.3,0.8), main='Microsatellites', xlab='Expected Heterozygosity', ylab='Observed Heterozygosity')
abline(0,1)
text(colMeans(micsta$Hs),colMeans(micsta$Ho),  col=popnam23, pos=4)




radsta <- basic.stats(test_rad, diploid=TRUE)
boxplot(radsta$Ho)
boxplot(radsta$Hs)
boxplot((radsta$Ho)-(radsta$Hs)) #ylim=c(-0.001, 0.001))
#PLOT FOR HS-HO FOR SNPS
plot(colMeans(radsta$Hs),colMeans(radsta$Ho),xlab='Expected Heterozygosity', ylab='Observed Heterozygosity', main='SNIPs')
abline(0,1)
text(colMeans(radsta$Hs),colMeans(radsta$Ho), col=popnam23, pos = 1)


geodist <- as.dist(read.table("geodist.txt"))
geodistvect <- as.vector(as.dist(geodist))

ppfst.SSR <- pairwise.neifst(test_micro)
ppfst.SSR.dist <- as.dist(ppfst.SSR)
microvect<- as.vector(ppfst.SSR.dist)

mantel1.SSR <- mantel.rtest(ppfst.SSR.dist, geodist, nrepet=9999) # MANTEL SSRs !!!!!
mantel1.SSR
plot(mantel1.SSR, main="Mantel's test for microsatellites")     #MANTEL HISTOGRAM !!!!!!






load("ppfst.SNP")
snpvect <- as.vector(as.dist(ppfst.SNP))

#Linear Regression for SSRs SNPS
summary(lm(microvect~snpvect))
plot(microvect~snpvect, main="Correlation of pairwise-Fst for microsatellites and RAD markers", xlab="microsatellite Pairwise-Fst", ylab="SNP Pairwise-Fst")
abline(lm(microvect~snpvect), col='red')


SNP.dist<- as.dist(ppfst.SNP) 


mantel2.SNP <- mantel.rtest(SNP.dist, geodist,  nrepet=9999)  #MANTEL SNPS !!!!!!!
mantel2.SNP
plot(geodistvect, snpvect)

plot(mantel2.SNP, main="Mantel's test for RAD markers")       #MANTEL HISTOGRAM !!!!!





#colour
popnames <- read.table("pop.txt")
pops <- rep(popnames[,2])[test_micro[,1]]  # replicate pop names according to number of samples per pop
test_micro1 <- test_micro  # make new object
test_micro1$Pop <- pops # Assign real pop names to dataframe

#pca for SSRs
micropca <- indpca(test_micro1) # Do PCA

#colouring
pop_colours <- rep(rainbow(19))[test_micro[,1]] # make colours (spelt properly!!!!!) for plot


#parameters for pca
popsnp <- rep(popnames[,2])[test_rad[,1]]
test_rad1 <- test_rad  # make new object
test_rad1$Pop <- popsnp # Assign real pop names to dataframe

#pca snps
snipca <- indpca(test_rad1) # Do PCA

pop_rainbow <- rep(rainbow(19))[test_rad1[,1]] # make colours (spelt properly!!!!!) for plot

#plot pca snps
png("C:/Users/Micko/Desktop/bats/SNPpca.png", height=800, width=1100)
plot(snipca, col= pop_rainbow) # plot PCA using SNPS !!!!
dev.off()

#colouring
country.pop=substr(popnames[,2], 1, 2)
country.ind=substr(pops, 1, 2)
length(unique(country.pop))
name_colours <- rep(rainbow(19))[country.ind] 

#imageplot pca microsatellites
png("C:/Users/Micko/Desktop/bats/SSRpca.png", height=800, width=1100)
plot(micropca, col= pop_rainbow)
dev.off()

#FST FSI
micsta$overall[c(7,9)]
radsta$overall[c(7,9)]

