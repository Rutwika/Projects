###############################################################
# Title:        ps3.r
# Author:       Rutwika Mohanty
# Date:         2017-01-04
# Description:  Turn-in product for problem set sample
###############################################################


rm(list=ls(all=TRUE))

## Import packages
library(data.table)
library(lmtest)
library(sandwich)
library(plm)
library(dplyr)

#Question 1

## Data import and validation
context1    <- fread('hprice1.csv')
summary(context1)

## Generate new variables
logprice    <- log(context1$price)
loglotsize  <- log(context1$lotsize)
logsqrft    <- log(context1$sqrft)

# ---------------------------------------------------------------------------------------------------
#   name:  <unnamed>
#   log:  C:\Users\Jason\Desktop\data2\hprice1_labels.txt
# log type:  text
# opened on:  17 Aug 2017, 13:13:20
# 
# . use C:\Users\Jason\Desktop\data\hprice1.dta, clear
# 
# . describe
# 
# Contains data from C:\Users\Jason\Desktop\data\hprice1.dta
# obs:            88                          
# vars:            10                          17 Mar 2002 12:21
# size:         2,816                          
# ---------------------------------------------------------------------------------------------------
#   storage   display    value
# variable name   type    format     label      variable label
# ---------------------------------------------------------------------------------------------------
#   price           float   %9.0g                 house price, $1000s
# assess          float   %9.0g                 assessed value, $1000s
# bdrms           byte    %9.0g                 number of bdrms
# lotsize         float   %9.0g                 size of lot in square feet
# sqrft           int     %9.0g                 size of house in square feet
# colonial        byte    %9.0g                 =1 if home is colonial style
# ---------------------------------------------------------------------------------------------------
#   Sorted by: 
#   
#   . log close
# name:  <unnamed>
#   log:  C:\Users\Jason\Desktop\data2\hprice1_labels.txt
# log type:  text
# closed on:  17 Aug 2017, 13:13:20
# ---------------------------------------------------------------------------------------------------

#Run First Model
model1 <- lm(price~bdrms + lotsize + sqrft, data = context1)

#summary of model1
summary(model1)



#OLS Significance test
coeftest(model1, vcov.=vcov)

#White Corrected Significance test
coeftest(model1, vcov.=vcovHC)

#Run Second Model
model2 <- lm(logprice~bdrms + loglotsize + logsqrft, data = context1)

#summary of model2
summary(model2)

#OLS Significance test
coeftest(model2, vcov.=vcov)

#White Corrected Significance test
coeftest(model2, vcov.=vcovHC)


# Questions Interpretations
#a. After running the OLS test for model 1 we conclude that lotsize and sqrft are the significant variables.
#b. sqrft variable is still significant after using the White-corrected significance test for model1.
#c. loglotsize and logsqrft variables are significant using the OLS test for model2.
#d. loglotsize and logsqrft variables are significant using the White-corrected test for model2.
#e. Comparing the results from model1 and model2 we can infer that taking logs reduces the effect of hetetroskedasticity.

#Question 2
rm(list=ls(all=TRUE))

## Data import and validation
context2    <- fread('beveridge.csv')
summary(context2)

# ---------------------------------------------------------------------------------------------------
#   name:  <unnamed>
#   log:  C:\Users\Jason\Desktop\data2\beveridge_labels.txt
# log type:  text
# opened on:  17 Aug 2017, 13:13:20
# 
# . use C:\Users\Jason\Desktop\data\beveridge.dta, clear
# 
# . describe
# 
# Contains data from C:\Users\Jason\Desktop\data\beveridge.dta
# obs:           135                          
# vars:             8                          29 Nov 2012 22:25
# size:         4,860                          
# ---------------------------------------------------------------------------------------------------
#   storage   display    value
# variable name   type    format     label      variable label
# ---------------------------------------------------------------------------------------------------
#   month           int     %d                    dec 2000 through feb 2012
# urate           double  %10.0g                unemployment rate, percent
# vrate           double  %10.0g                vacancy rate, percent
# t               int     %9.0g                 linear time trend
# ---------------------------------------------------------------------------------------------------
#   Sorted by: t
# 
# . log close
# name:  <unnamed>
#   log:  C:\Users\Jason\Desktop\data2\beveridge_labels.txt
# log type:  text
# closed on:  17 Aug 2017, 13:13:20
# ---------------------------------------------------------------------------------------------------
 
#Run third Model
model3 <- lm(urate ~ vrate, data = context2)
summary(model3)

#OLS Significance test

coeftest(model3, vcov.=vcov)

#Newey-West-corrected signi…cance test
coeftest(model3,vcov=NeweyWest(model3,lag=5))

  library(tseries)
kpss.test((context2$urate),null="Level")
kpss.test((context2$urate),null="Trend")
kpss.test((context2$vrate),null="Level")
kpss.test((context2$vrate),null="Trend")

kpss.test(diff((context2$urate)),null="Level") #good
kpss.test(diff((context2$urate)),null="Trend") 
kpss.test(diff((context2$vrate)),null="Level") #good
kpss.test(diff((context2$vrate)),null="Trend")

kpss.test(diff(diff(context2$urate)),null="Level") #good
kpss.test(diff(diff(context2$urate)),null="Trend") #good
kpss.test(diff(diff(context2$vrate)),null="Level") #good
kpss.test(diff(diff(context2$vrate)),null="Trend") #good

#run fourth model
model4 <- lm(diff(urate) ~ diff(vrate), data = context2)
summary(model4)

coeftest(model4, vcov.=vcov)

#newey west
coeftest(model4,vcov=NeweyWest(model4,lag=5))


#interpretations from Question 2
#f. Before we correct for stationairty, OLS and NeweyWest signi…cance tests show that variable vrate is significant in both the tests.
#g. Based on KPSS test, we should take one difference of unemeployment rate or transformation before modeling.
#h. Based on KPSS test, we should take one difference of vacancy rate or transformation before modeling.
#i. In model 3 data are more significant than model 4.
#j. Model3 better describes the data because p-values of variables are smaller in model3 when compared to
#   model4. The smaller p-values variables are more significant in model3, hence model3 decribes the data better.

#Question 3
rm(list=ls(all=TRUE))

## Data import and validation
context3    <- fread('JTRAIN.csv')
summary(context3)

#generation of new variables
library(plm)
context3<-read.csv("JTRAIN.csv")
context3<- plm.data(context3,index=c("fcode","year"))

context3$d88<-as.numeric(context3$year==1988)
context3$d89<-as.numeric(context3$year==1989)
context3$grant_t_1<-0

granted_fcodes<-context3[which(context3$d88==1 & context3$grant==1),"fcode"]

for(i in seq(1:length(granted_fcodes)))
{
  context3[which(context3$fcode==granted_fcodes[i] & context3$d89==1),"grant_t_1"]<-1
}
model5 <- plm(log(scrap)~d88+d89+grant+grant_t_1,model="pooling",data=context3)
summary(model5)

model6 <- plm(log(scrap)~d88+d89+grant+grant_t_1,model="within",data=context3)
summary(model6)

coeftest(model6,vcov.=vcov)

summary(model6, vcov=vcovHC(model6, method = "arellano"))

#k. From model 5, we can interpret that if grant has been given to a company in a current year then there is 
#   a 20 percent increase in scrap rate.
#l. From model 5, we can interpret that if grant has been given to a company in a previous year then there is 
#   a 4.89 percent increase in scrap rate.
#m. On interpretating the signs of b3 and b4 from model 5 we infer that there is always a positive 
#   scrap rate. Scrap rate decreases if firm was given grant in a previous year.
#n. From model 6, we can interpret that if grant has been given to a company in a current year then there is 
#   a 25.23 percent decrease in scrap rate.
#o. From model 6, we can interpret that if grant has been given to a company in a previous year then there is 
#   a 42.15 percent decrease in scrap rate.
#p. On interpretating the signs of b3 and b4 from model 6 we can infer that there is always a decrease in 
#   scrap rate. Scrap rate decreases  more if firm was given grant in a previous year.
#q. Arellano test is better than OLS as it reduced the standard error of co-efficients.