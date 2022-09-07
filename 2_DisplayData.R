#First download the data into a local folder
dta_tmp <- read.csv(file = "/Users/YuDengdeng/Dropbox/Classes/STAT 5305 2022A/Data/ex01-026sevengr.csv")

#------------------- describe categorical variable ---------------------#
tbl_tmp <- table(dta_tmp$Gender)
list(tbl_tmp)
pie(tbl_tmp)
barplot(tbl_tmp)
barplot(tbl_tmp, 
        main = "asdf",
        xlab = "asdf",
        ylab = "asdf",
        names.arg = c("1","2"),
        border = "dark blue", 
        col = "pink",
        horiz = TRUE)

#------------------- describe numerical variable ---------------------#
stem(dta_tmp$IQ)#STEM plot
hist(dta_tmp$IQ)#histogram
boxplot(IQ~Gender,data=dta_tmp, main="asdf",
        xlab="asdf", ylab="asdf") #side by side boxplot
mean(dta_tmp$IQ) #mean  
sd(dta_tmp$IQ) #standard deviation
median(dta_tmp$IQ) #median
fivenum(dta_tmp$IQ) #five number summary
summary(dta_tmp$IQ)
quartile_tmp <- quantile(dta_tmp$IQ)
Q1 <- as.numeric(quartile_tmp[2])
Q3 <- as.numeric(quartile_tmp[3])
IQR <- Q3 - Q1


#------------------- normal distribution ---------------------## Load package, MASS
qqnorm(dta_tmp$IQ)
qqline(dta_tmp$IQ)
#Normal Distribution
IQ_std <- (dta_tmp$IQ - mean(dta_tmp$IQ)) / sd(dta_tmp$IQ)
qqnorm(IQ_std)
qqline(IQ_std)
pnorm(1, mean = 0, sd = 1, TRUE) #lower tail
pnorm(1, mean = 0, sd = 1, FALSE) #upper tail tail
pnorm(2, mean = 0, sd = 1, TRUE)
pnorm(2, mean = 0, sd = 1, FALSE) #upper tail tail

pnorm(100, mean = mean(dta_tmp$IQ), sd = sd(dta_tmp$IQ), TRUE) #percentage of IQ that is lower than 100
qnorm(0.20, mean = mean(dta_tmp$IQ), sd = sd(dta_tmp$IQ)) #Q1 IQ
qnorm(0.50, mean = mean(dta_tmp$IQ), sd = sd(dta_tmp$IQ)) #Q2 IQ
qnorm(0.75, mean = mean(dta_tmp$IQ), sd = sd(dta_tmp$IQ)) #Q3 IQ


#First download the data into a local folder
dta_tmp <- read.csv(file = "/Users/YuDengdeng/Dropbox/Classes/STAT 5305 2022A/Data/ex02-008berries.csv")

#------------------- make a scatter plot of   Antho2 vs Antho1---------------------#
# just a scatter plot
plot(dta_tmp$Antho1, dta_tmp$Antho2, main="asdf",
     xlab="asdf", ylab="asdf", pch=19)
# scatter plot with smoothed curve and straight line
scatter.smooth(dta_tmp$Antho1, dta_tmp$Antho2, lpars = list(col = "blue", lwd = 3, lty = 3), 
               xlab="asdf", ylab="asdf",main="asdf")
abline(lm(dta_tmp$Antho2~dta_tmp$Antho1), col='red',lwd=3)
legend('topright', c('Linear','Smoothing'), lty=c(1,2), lwd=c(3,3), col=c('red','blue'))

#The scatterplot( ) function in the car package offers many enhanced features, 
#including fit lines, marginal box plots, conditioning on a factor, 
#and interactive point identification. Each of these features is optional.
install.packages("car") #isntall the package if you do not have one
library(car) #load the "car" packag
scatterplot(Antho2 ~ Antho1, data=dta_tmp,
            xlab="asdf", ylab="asdf",
            main="asdf")
n = dim(dta_tmp)[1] #sample size
#scatter plot with different legends for different cateogires
#dashed curve is smoother, solid line is fitted line
dta_tmp$category = sample(c(0,1), replace=TRUE, size=n)
scatterplot(Antho2 ~ Antho1|category, data=dta_tmp,
            xlab="asdf", ylab="asdf",
            main="asdf")


#------------------- obtain the correlation coefficient between  Antho2 and Antho1---------------------#
#calculating using definition
1/(n-1)*sum((dta_tmp$Antho1 - mean(dta_tmp$Antho1))/sd(dta_tmp$Antho1) * (dta_tmp$Antho2 - mean(dta_tmp$Antho2))/sd(dta_tmp$Antho2))
#calculating using function
cor(dta_tmp$Antho1, dta_tmp$Antho2)


#------------------- obtain two-way table / contingency table ---------------------##
#load new data
dta_tmp <- read.csv(file = "/Users/YuDengdeng/Dropbox/Classes/STAT 5305 2022A/Data/ex02-100titanic.csv")
# create contingency table r
head(dta_tmp) #examine the first several rows
names(dta_tmp) #obtain the column name for each variable
with(dta_tmp, table(Survived, Pclass))
#Alternatively, you can get the same result using the "xtabs" function.
# how to make a contingency table
xtabs(~Survived + Pclass, data= dta_tmp) 


