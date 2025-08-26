setwd("C:\\Users\\IT24102289\\Desktop\\IT24102289_PS_Lab05")

##Import data set
delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)

##View in separate window
fix(delivery_times)

##Attach file
attach(delivery_times)

##Rename column name
names(delivery_times) <- ("minutes")

##Attach again to rename variables
attach(delivery_times)

##Histogram (legnth = 10 is to get 9 classes)
histogram <- hist(minutes, main = "Histogram for Delivery Times in Minutes", breaks = seq(20, 70, length = 10), right = FALSE)

##Class limits of the frequency distribution 
breaks <- round(histogram$breaks)

##Assign class frequencies of the histogram
freq <- histogram$mids

##Assign mid point of the each class
mids <- histogram$mids

##Cumulative frequencies
cum.freq <- cumsum(freq)

##Creating a null variable
new <- c()

##Store cumulative frequencies in order to get the ogive
for (i in 1:length(breaks)) {
  if (i == 1) {
    new[i] = 0
  }
  else {
    new[i] = cum.freq[i - 1]
  }
}

##Draw cumulative frequency polygon
plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Delivery times", xlab = "Minutes", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))

##Obtain upper limit of each class
cbind(Upper = breaks, Cumfreq = new)

?boxplot
