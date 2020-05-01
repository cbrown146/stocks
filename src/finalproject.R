
#Name: Christopher Brown
#Date: 12/11/2019
#ISTA 116 Section C || Kim Rosema
#Final Project
#Collaborators: None

#Get Data for metal stocks and retail stocks.
library(readr)
#Metal Group
#Gold
GLD    <- read_csv("ISTA_116/Final/GLD.csv")
ABX    <- read_csv("ISTA_116/Final/ABX.TO.csv")
NEM    <- read_csv("ISTA_116/Final/NEM.csv")
#Silver 
WPM    <- read_csv("ISTA_116/Final/WPM.csv")
AG     <- read_csv("ISTA_116/Final/AG.csv")
PAAS   <- read_csv("ISTA_116/Final/PAAS.csv")
#Copper
SCCO   <- read_csv("ISTA_116/Final/SCCO.csv")
FCX    <- read_csv("ISTA_116/Final/FCX.csv")
BBL    <- read_csv("ISTA_116/Final/BBL.csv")
BHP    <- read_csv("ISTA_116/Final/BHP.csv")
#Retail Group[10]
COSTCO <- read_csv("ISTA_116/Final/COST.csv")        
DLTR   <- read_csv("ISTA_116/Final/DLTR.csv")
TGT    <- read_csv("ISTA_116/Final/TGT.csv")
WMT    <- read_csv("ISTA_116/Final/WMT.csv")
LOW    <- read_csv("ISTA_116/Final/LOW.csv")
HD     <- read_csv("ISTA_116/Final/HD.csv")
BIG    <- read_csv("ISTA_116/Final/BIG.csv")
BBBY   <- read_csv("ISTA_116/Final/BBBY.csv")        
KR     <- read_csv("ISTA_116/Final/KR.csv")          
ROST   <- read.csv("ISTA_116/Final/ROST.csv")        

#Ho: All stocks do bad during a recession 
#Ha: There are stocks that are resilient in a recession possibly in retail or metal. 

#Ho u_retail.stocks - u_metal.stocks = 0
#Ha u_retail.stocks - u_metal.stocks != 0
  
#EDIT:  I had to throw away some of these chosen data and replace them with metal stocks and retail stocks.  Pick retail stocks based off of randomness, NOT 
#how I feel one will do in a recession. In this case, I feel I have accomplished this goal.    

#TO DO LIST:
#ISOLATE A TIME AND AVERAGE CLOSING PRICE by the YEAR[2007 and 2010].
#Example: group1.var1.07 <-  mean(BIG$close[#:#]) starting point for 2007
#Example: group1.var1.10<-  mean(BIG$close[#:#]) ending point for 2010
#Example: group2.var1.07<-  mean(BIG$close[#:#]) starting point for 2007
#Example: group2.var1.10 <-  mean(BIG$close[#:#]) ending point for 2010
#------------------------
#metal sets for 2007
metal.set1.07   <- mean(GLD$Close[16:264])   
metal.set2.07   <- mean(ABX$Close[5:250])
metal.set3.07   <- mean(NEM$Close[5:250])
metal.set4.07   <- mean(WPM$Close[5:250])
metal.set5.07   <- mean(AG$Close[5:250])
metal.set6.07   <- mean(PAAS$Close[16:264])
metal.set7.07   <- mean(SCCO$Close[16:264])
metal.set8.07   <- mean(FCX$Close[2:250])
metal.set9.07   <- mean(BBL$Close[2:250])
metal.set10.07  <- mean(BHP$Close[2:250])
#retail sets for 2007
retail.set1.07  <- mean(COSTCO$Close[2:250])
retail.set2.07  <- mean(DLTR$Close[2:250])
retail.set3.07  <- mean(TGT$Close[2:250])
retail.set4.07  <- mean(WMT$Close[2:250])
retail.set5.07  <- mean(LOW$Close[2:250])
retail.set6.07  <- mean(COSTCO$Close[2:250])
retail.set7.07  <- mean(COSTCO$Close[2:250])
retail.set8.07  <- mean(COSTCO$Close[2:250])
retail.set9.07  <- mean(COSTCO$Close[2:250])
retail.set10.07 <- mean(COSTCO$Close[2:250])
#metal sets for 2010
metal.set1.10 <- mean(GLD$Close[772:1019])
metal.set2.10 <- mean(ABX$Close[757:1002])
metal.set3.10 <- mean(NEM$Close[758:1003])
metal.set4.10 <- mean(WPM$Close[758:1003])
metal.set5.10 <- mean(AG$Close[758:1003])
metal.set6.10 <- mean(PAAS$Close[772:1017])
metal.set7.10 <- mean(SCCO$Close[772:1017])
metal.set8.10 <- mean(FCX$Close[758:1003])
metal.set9.10 <- mean(BBL$Close[758:1003])
metal.set10.10 <- mean(BHP$Close[758:1003])
#retail sets for 2010
retail.set1.10  <- mean(COSTCO$Close[758:1003])
retail.set2.10  <- mean(DLTR$Close[758:1003])
retail.set3.10  <- mean(TGT$Close[758:1003])
retail.set4.10  <- mean(WMT$Close[758:1003])
retail.set5.10  <- mean(LOW$Close[758:1003])
retail.set6.10  <- mean(HD$Close[758:1003])
retail.set7.10  <- mean(BIG$Close[758:1003])
retail.set8.10  <- mean(BBBY$Close[758:1003])
retail.set9.10  <- mean(KR$Close[758:1003])
retail.set10.10 <- mean(ROST$Close[758:1003])

#Eventually...
# Group1.start.07 <- c(var1.start.07 + var(n2).start.07...+ var10.start.07)
# Group1.end.10 <- c(var1.start.10 + var(n2).start.10...+ var10.end.10)
# Group2.start.07 <- c(var1.start.07 + var(n2).start.07...+ var10.start.07)
# Group2.end.10 <- c(var1.start.10 + var(n2).start.10...+ var10.end.10)

#Create Retail Group Vector
retail.group.start.07 <- c(retail.set1.07,retail.set2.07,retail.set3.07,retail.set4.07,retail.set5.07,retail.set6.07,retail.set7.07,retail.set8.07,retail.set9.07,retail.set10.07)
retail.group.end.10 <- c(retail.set1.10,retail.set2.10,retail.set3.10,retail.set4.10,retail.set5.10,retail.set6.10,retail.set7.10,retail.set8.10,retail.set9.10,retail.set10.10)


#Create Metal Group Vector
metal.group.start.07 <- c(metal.set1.07,metal.set2.07,metal.set3.07,metal.set4.07,metal.set5.07,metal.set6.07,metal.set7.07,metal.set8.07,metal.set9.07,metal.set10.07)
metal.group.end.10 <- c(metal.set1.10,metal.set2.10,metal.set3.10,metal.set4.10,metal.set5.10,metal.set6.10,metal.set7.10,metal.set8.10,metal.set9.10,metal.set10.10)

#Make a response variable by diving ending point by starting point  
metal.response <- metal.group.end.10 / metal.group.start.07
#[1] 1.7370818 1.2608972 1.2718678 1.7694369 1.2499428 0.9395169 1.0750140 0.9825000 1.1728079 1.2645823

retail.response <- retail.group.end.10 / retail.group.start.07
#[1] 1.0127176 1.7530024 0.8746700 1.1291071 0.7740145 0.5219891 0.5573634 0.7075603 0.1804749 0.2276818

#------------------------
#what the t.test answers:
#how the prices  compare by the percentage 
#gained or lost in those two times.  
#Also, tells us if the means are equal and p-value.  Both important in telling us if the null hypothesis can be rejected.  

#I will create two groups to do a comparison using a t.test.  This will tell me the percentage that a stock gained or lost during the Great Recession.
#t.test(group1 , group2)
result.regression <-t.test(metal.response, retail.response)
result.regression

#These plots were added to demonstrate the combined datasets of a vector for the year 2007 and 2010.  
plot(retail.group.start.07, main= "Retail Group Year 2007")
plot(retail.group.end.10, main= "Retail Group Year 2010")
plot(metal.group.start.07,  main= "Metal Group Year 2007")
plot(metal.group.end.10,  main= "Metal Group Year 2010")



