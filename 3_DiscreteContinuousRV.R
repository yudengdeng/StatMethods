#Generate/Simulate data from Uniform Distribution
runif(1)    # generates 1 random number
runif(3)    # generates 3 random number
runif(3, min=5, max=10)    # define the range between 5 and 10

#Generate/Simulate dataFrom Normal Distribution
rnorm(1)    # generates 1 random number
rnorm(3)    # generates 3 random number
rnorm(3, mean=10, sd=2)    # provide our own mean and standard deviation

#To find P(X < 72)
pnorm(72, mean=70, sd=3)


#To find that 85th percentile of a normal distribution whose mean is 70 and whose standard deviation is 3.
qnorm(0.85,mean=70,sd=3)
#To find the critical value for 98% Confidence level
qnorm(0.99, mean=0, sd=1)

#binomial distribution
set.seed(1)
shoot <- rbinom(400,50,0.8)
mean(shoot)
var(shoot)
percent_accuracy <- shoot/50
mean(percent_accuracy)
var(percent_accuracy)

