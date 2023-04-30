#Start of Item 1 
submitP <- 4  
time30sec <- 0.5  
time1min <- 1 
time15sec <- 0.25   
  
# For 1A
#The probability that time between submissions is at most 15 seconds
Prob_15sec <- ppois(1, submitP*time15sec)
Prob_15sec
#End of 1A

# For 1B
#The probability that time between submissions is greater than 30 seconds
Prob_30sec <- 1 - ppois(1,  submitP*time30sec)
Prob_30sec
#End of 1B

# For 1C
#The probability that time between submissions is between 15 seconds and 1 minute
Prob_15Sec_to_1Min <- 1 - ppois(0, submitP*time15sec) - ppois(1, submitP*time1min)
Prob_15Sec_to_1Min
#End of 1C
#End of Item 1 



#Start of Item 3
e <- 2.718 
#For 3A
# The probability of more than two jobs arriving in a minute
x1 <- factorial(0)
x2 <- factorial(1)
x3 <- factorial(2)
#Using a Poisson distribution
two_jobs_arriving_1min <-  1 - (e^-2 * (2^0 / x1) + e^-2 * (2^1 / x2) + e^-2 * (2^2 / x3))
two_jobs_arriving_1min
#End of 3A

#For 3B
#The probability of Y > 30 seconds can be found using the exponential distribution function
Y1 <- e^(-30/30) 
Y1
#End of 3B

#For 3C
#The probability of less than 30 seconds elapsing between two job
Y2 <- 1- e^(-1)
Y2
#End of 3C

#For 3D
e <- 2.718 
#The conditional probability
job_arriving_30sec <-  1 - (e^-1 * 1^0)/x1
job_arriving_30sec
#End of 3D
#End of Item 3



#Start of Item 7
#For 7A
lambda <- 1/4
x <- 10
#The probability that at least 10 minutes will elapse without a visit
x_greaterthan_10 <- e^(-lambda*10)
x_greaterthan_10
#End of 7A

#For 7B
sum = 0
for (i in 0: 7)
{
  K <- factorial (i)
  #The probability of having less than eight visits
  y_lessthan_8 = (e^(-15) * 15^i) / factorial(i)
  y_lessthan_8
  print(y_lessthan_8)
  sum = sum + y_lessthan_8
  #print (K)
}
sum
#End of 7B

#For 7C
#The time elapsed since the last visit
time_elapsed <- 1 - e^(-15/60*15)
time_elapsed
#End of 7C

#For 7D
#Using the Poisson distribution formula to calculate the value of X that separates the top 25% of the distribution from the bottom 75%
qpois(0.75, lambda = 15)
#End of 7D
#End of Item 7

