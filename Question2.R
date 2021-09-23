rm(list = ls())
set.seed(12345)

#Question-2 Part A

fifty_arrivals <- rpois(100,20*50)
hundred_arrivals <- rpois(100,20*100)

plot(fifty_arrivals,main = "Scatter plot of t = 50", xlab = "number of observations", ylab = "Number of arrivals")
plot(hundred_arrivals,main = "Scatter plot of t = 100", xlab = "number of observations", ylab = "Number of arrivals")

#Question-2 Part B
plot(density(fifty_arrivals),main = "Density plot for t = 50", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
plot(density(hundred_arrivals),main = "Density plot for t = 100", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
plot(ecdf(fifty_arrivals),main = "CDF plot for t = 50", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
plot(ecdf(hundred_arrivals),main = "CDF plot for t = 100", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
