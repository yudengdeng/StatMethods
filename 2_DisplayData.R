#First download the data into a local folder
dta_tmp <- read.csv(file = "/Users/YuDengdeng/Dropbox/Classes/Data/ex01-026sevengr.csv")

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
