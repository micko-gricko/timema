library(nlme)
library(ggplot2)
install.packages("ggpubr")
library(ggpubr)
install.packages("spatstat")
library(spatstat)
install.packages("lme4")
library(lme4)

setwd("C:/Users/Micko/Desktop/Novi Fax/First step")
read.table("Survival.txt",header = TRUE)->first_survival
first_survival
head(first_survival)
str(first_survival)
first_survival[,3]
first_survival$TREATMENT
first_survival$TREATMENT<-factor(first_survival$TREATMENT)
str(first_survival)
real_time<-c(10.75, 30.25, 43.13, 55.37, 67.00, 78.83, 90.58, 102.37, 114.87, 127.00, 147.00, 163.00, 175.12, 186.87, 199.13, 210.71, 222.58, 234.87, 247.25)
real_time
#to give comand  on which column you want to calculate weighted mean (1 for columne, 2 for row)
apply(first_survival[,4:ncol(first_survival)], 1, function(x) weighted.mean(real_time,x))->MTTD1
MTTD1

#combining dataset with result we got for MTTD
cbind(first_survival,MTTD1)->first_table
head(first_table)
#to put MTTD in excel file
write.table(first_table, "MTTD_R1.csv")
droplevels(subset(first_table,TREATMENT=="0.03"))->first_stress
first_stress

#stats part: linear model, lme because I have fixed and random factor. For random you have 1 or name of other random facotor if you have it.
lme(MTTD1~REGIME, data=first_stress, random =~1|POPULATION)-> lmeMTTD1
#residuals mean error
lmeMTTD1$residuals-> resMTTD1
shapiro.test(resMTTD1)
# p value below 0.05, which means I dont have normality
hist(resMTTD1)
qqnorm(resMTTD1)
# to have results of models
summary(lmeMTTD1)
dim(first_table)
first_table[,c(1:3, 23)]-> first_MTTD
head(first_MTTD)
#to test if there is effect of stress


#for pops of 5.11.

setwd("C:/Users/Micko/Desktop/Novi Fax/First step")
read.table("Second.txt",header = TRUE)->second_survival
second_survival
head(second_survival)
str(second_survival)
second_survival[,3]
second_survival$TREATMENT
second_survival$TREATMENT<-factor(second_survival$TREATMENT)
str(second_survival)
real_time2<-c(9.00, 21.50, 33.33, 45.08, 56.88, 69.38, 81.50, 101.50, 117.50, 129.63, 141.38, 153.63, 165.21, 177.08, 189.38, 201.50, 214.13, 225.83, 237.58, 249.75, 261.88 )
real_time2
#to give comand  on which column you want to calculate weighted mean (1 for columne, 2 for row)
apply(second_survival[,4:ncol(second_survival)], 1, function(x) weighted.mean(real_time2,x))->MTTD1
MTTD1

#combining dataset with result we got for MTTD
cbind(second_survival,MTTD1)->second_table
head(second_table)
#to put MTTD in excel file
write.table(second_table, "MTTD_R2.csv")

#to test if there is effect of stress
droplevels(subset(second_table,TREATMENT=="0.03"))->second_stress
second_stress

#stats part: linear model, lme because I have fixed and random factor. For random you have 1 or name of other random facotor if you have it.
lme(MTTD1~REGIME, data=second_stress, random =~1|POPULATION)-> lmeMTTD1
#residuals mean error
lmeMTTD1$residuals-> resMTTD1
shapiro.test(resMTTD1)
# p value below 0.05, which means I dont have normality
hist(resMTTD1)
qqnorm(resMTTD1)
# to have results of models
summary(lmeMTTD1)
second_table[,c(1:3, 25)]-> second_MTTD
head(second_MTTD)
rbind(first_MTTD,second_MTTD)->final_surv
final_surv
write.table(final_surv, "Final_table.csv")

droplevels(subset(final_surv,TREATMENT=="0.03"))->final_stress
final_stress

#stats part: linear model, lme because I have fixed and random factor. For random you have 1 or name of other random facotor if you have it.
lme(MTTD1~REGIME, data=final_stress, random =~1|POPULATION)-> lmeMTTD1
#residuals mean error
lmeMTTD1$residuals-> resMTTD1
shapiro.test(resMTTD1)
# p value below 0.05, which means I dont have normality
hist(resMTTD1)
qqnorm(resMTTD1)
# to have results of models
summary(lmeMTTD1)
read.table("Final_table.txt", header = TRUE) -> fin
droplevels(subset(fin,TREATMENT=="0.03"))->fin_stress
#you will use only this. 50% of dead flies.
fin_stress
#plot(fin_stress$MTTD~fin_stress$REGIME, ylab= "MTTD", xlab="REGIMME")
#plotMTTD<- ggplot(fin_stress, aes(x= REGIME, y=MTTD1, fill=REGIME))+
#geom_boxplot()+ 
#geom_jitter(position= position_jitter(0))+
#theme(panel.background = element_rect(fill= "white", color= "black"), panel.grid.major= element_line("green"))
#plotMTTD
#create f-tion for standard error
err.std<- function(vector){sd(vector)/sqrt(length(vector))}
stand_dev <- function(x) {
  m <- mean(x)
  ymin <- m-err.std(x)
  ymax <- m+err.std(x)
  return(c(y=m,ymin=ymin,ymax=ymax))
}
#plotMTTD1<- ggplot(fin_stress, aes(x= REGIME, y=MTTD1))+
#geom_jitter(position= position_jitter(0))+
#stat_summary(fun.data = stand_dev, color="red")+
#theme(panel.background = element_rect(fill= "white", color= "black"), panel.grid.major= element_line("grey"))
#plotMTTD1

#plotMTTD1<- ggplot(fin_stress, aes(x= REGIME, y=MTTD1))+
#geom_jitter(position= position_jitter(0))+
#stat_summary(fun.y = "mean", colour="red", size = 3, geom = "point")+
#theme(panel.background = element_rect(fill= "white", color= "black"), panel.grid.major= element_line("grey"))
#plotMTTD1
# you will need to change weithed mean to weighted median. I will have to load new package to  read this type of data.
#at the begining remove with droplevels non stressed condition because it cannot calculate the median. F-tion exactly same as for weighted mean. Plot after and combine it in tables. Do it all in new script.
#try to transform data with log f-tion, inverse f-tion or R square. At the end you can compare to kinds of distribution with wilcox.test.
quantile(fin_stress$MTTD1)
# I used whole data, ab+nd I choosed to see only what happend at seventh day. Noow I want to count how many flies are dead and how many is alive It is percent of time when 50% percent of overall flies are dead.
read.table("Survival.txt",header = TRUE)->first_survival
first_survival
read.table("Second.txt",header = TRUE)->second_survival
second_survival
first_survival[,c(4:15)]
#2 is for column, 1 is for row 
apply(first_survival[,c(4:15)],1, FUN = sum)->half_dead1
10-half_dead1 ->nb_alive1
cbind(first_survival[,c(1:3)], half_dead1, nb_alive1) ->prop_surv1
prop_surv1

#names of colum have to be the same because you are going to combine them.but the name of file has to be different.
second_survival
second_survival[,c(4:16)]
#2 is for column, 1 is for row 
apply(second_survival[,c(4:16)],1, FUN = sum)->half_dead1
10-half_dead1 ->nb_alive1
cbind(second_survival[,c(1:3)], half_dead1, nb_alive1) ->prop_surv2
prop_surv2

rbind(prop_surv1, prop_surv2) -> prop_surv
prop_surv
prop_surv$prop_dead<-prop_surv$half_dead1/10
prop_surv
droplevels(subset(prop_surv,TREATMENT=="0.03"))->prop_surv_stress
prop_surv_stress

str(prop_surv)
dodge <- position_dodge(width=0.3)
prop_surv$TREATMENT<-factor(prop_surv$TREATMENT)
plot_prop<- ggplot(prop_surv, aes(x= REGIME, y= prop_dead,shape=TREATMENT))+
  geom_jitter(position= dodge, size= 4)+
  stat_summary(position= dodge, fun.data = stand_dev, color="coral1")+
  theme(panel.background = element_rect(fill= "white", color= "black"), panel.grid.major= element_line("grey"))+ xlab("Regime") + ylab("Percentage of death flies (%) after 7 days")
    plot_prop
    
    
    
    
    plot_binom3<- ggplot(prop_surv_stress,aes(x=REGIME,y=prop_dead, color=REGIME))+
      geom_jitter(position=position_jitter(0), size=4)+
      stat_summary(fun.data=stand_dev,color="black",size=1.2)+
      theme(panel.background=element_rect(fill = "white", colour = "black"), panel.grid.major = element_line("grey"),
            axis.title.y = element_text(size=13),
            axis.title.x = element_text( size=12))+
      labs(y="proportion of dead flies at 7days")
    plot_binom3
    
    plot_binom4<- ggplot(prop_surv_stress,aes(x=REGIME,y=prop_dead))+
      geom_jitter(position=position_jitter(0), size=4,alpha=0.3,color="blue")+
      stat_summary(fun.data=data_summary,color="black",size=1.2)+
      theme(panel.background=element_rect(fill = "white", colour = "black"), panel.grid.major = element_line("grey"),
            axis.title.y = element_text(size=13),
            axis.title.x = element_text( size=12))+
      labs(y="proportion of dead flies at 5days")
    plot_binom4 
    

#statistical analyses. we will used general linear mode for non-normal distributed data.
#glmer(cbind(half_dead1,nb_alive1)~REGIME+(1|POPULATION), data=prop_surv, family = "binomial") ->glme_stress
#summary(glme_stress)
#results: there is 1,7 more dead flies then alive in seventh day.
glm(cbind(half_dead1,nb_alive1)~REGIME, data=prop_surv_stress, family = "binomial") ->glm_stress
summary(glm_stress)

