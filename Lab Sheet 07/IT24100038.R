setwd("C:\\Users\\CHAMODDEALWIS\\OneDrive - Sri Lanka Institute of Information Technology\\SLIIT\\2nd Year\\1st Sem\\PS\\labs\\Lab 7")


# Exercise 1: Uniform Distribution
prob1 <- punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)
cat("Probability train arrives between 8:10 and 8:25:", prob1, "\n\n")

# Exercise 2: Exponential Distribution
prob2 <- pexp(2, rate = 1/3, lower.tail = TRUE)
cat("Probability update takes at most 2 hours:", prob2, "\n\n")

# Exercise 3: Normal Distribution
prob3_i <- 1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
cat("Probability IQ above 130:", prob3_i, "\n")

# Part ii: 95th percentile 
iq_95 <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
cat("IQ score at 95th percentile:", iq_95, "\n")

