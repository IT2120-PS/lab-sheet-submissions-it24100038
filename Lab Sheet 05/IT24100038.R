setwd("C:\\Users\\it24100038\\Desktop\\IT24100038")

Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")

head(Delivery_Times)

histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  main = "Histogram fro delivery times",
                  breaks = seq(20,70, length=10),
                  right = FALSE)

str(Delivery_Times)
colnames(Delivery_Times)
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()

for (i in 1:length(breaks)-1) {
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}

cbind(classes=classes,Frequency = freq, Midpoint = mids)
cum_freq <- cumsum(freq)
(breaks[-1])

plot(breaks[-1], cum_freq,
     type = "o", pch=16,col="blue",
     main = "Cumulative Frequency Polygon(Ogive)",
     xlab = "Delivery time",
     ylab = "Cumulative Frequency")

