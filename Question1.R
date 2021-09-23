rm(list = ls())
set.seed(12345)

input_list <- c(10,50,100,500)


#Question-1 part A
ten_trials <- rbinom(n = 100,size = input_list[1],p = 0.7)
fifty_trials <- rbinom(n = 100,size = input_list[2],p = 0.7)
hundred_trials <- rbinom(n = 100,size = input_list[3],p = 0.7)
five_hundred_trials <- rbinom(n = 100,size = input_list[4],p = 0.7)

#Question-1 Part A Scatter Plots
plot(ten_trials,main = "Scatter plot of t = 10", xlab = "number of observations", ylab = "Number of arrivals")
plot(fifty_trials,main = "Scatter plot of t = 50", xlab = "number of observations", ylab = "Number of arrivals")
plot(hundred_trials,main = "Scatter plot of t = 100", xlab = "number of observations", ylab = "Number of arrivals")
plot(five_hundred_trials,main = "Scatter plot of t = 500", xlab = "number of observations", ylab = "Number of arrivals")


#Question-1 Part B
plot(density(ten_trials),main = "Density plot for t = 10", xlab = "Number of Arrivals", ylab = "Probablity", col = "blue")
plot(density(fifty_trials),main = "Density plot for t = 50", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
plot(density(hundred_trials),main = "Density plot for t = 100", xlab = "Number of Arrivals", ylab = "Probablity", col = "red")
plot(density(five_hundred_trials),main = "Density plot for t = 500", xlab = "Number of Arrivals", ylab = "Probablity", col = "purple")


#Question-1 Part C
plot(ecdf(ten_trials),main = "CDF plot for t = 10", xlab = "Number of Arrivals", ylab = "Probablity", col = "blue")
plot(ecdf(fifty_trials),main = "CDF plot for t = 50", xlab = "Number of Arrivals", ylab = "Probablity", col = "darkgreen")
plot(ecdf(hundred_trials),main = "CDF plot for t = 100", xlab = "Number of Arrivals", ylab = "Probablity", col = "red")
plot(ecdf(five_hundred_trials),main = "CDF plot for t = 500", xlab = "Number of Arrivals", ylab = "Probablity", col = "purple")


#Question-1 Part D
new_sample <-rbinom(n = 100, size = 100, p = 0.1)
plot(new_sample, main = "Scatter plot of t = 100 and p = 0.1", xlab = "Number of observations", ylab = "Number of Arrivals")
plot(density(new_sample),main = "Density plot for t = 100 and p = 0.1",xlab = "Number of Arrivals", ylabs = "probablity", col = "brown")
plot(ecdf(new_sample),main = "CDF plot for t = 100 and p = 0.1",xlab = "Number of Arrivals", ylabs = "probablity", col = "brown")


#Question-1 Part E
geom.data<-rgeom(100,0.7)
plot(geom.data,main = "Scatter plot for t = 100 and p = 0.1",xlab = "Number of Observations", ylabs = "Number of Inter-Arrivals", col = "black")
plot(ecdf(geom.data),main = "CDF plot for Geometric(p)",xlab = "Number of inter-arrivals", ylab = "probablity", col = "black")
