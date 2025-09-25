setwd("C:\\Users\\IT24102289\\Desktop\\IT24102289_PS_Lab08")

##import data set
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Change column name
colnames(data) <- c("Weight")

##01. Calculate the population mean & population sd
population <- data$Weight
popmn <- mean(population)
popvar <- var(population)
popsd <- sqrt(popvar)

print(paste("Population Mean:", popmn))
print(paste("Population SD:", popsd))

##02. 
##create null vector to store sample datasets
samples <- c()
n <- c()

for (i in 1:25){
	s <- sample(population, 6, replace = TRUE)
	samples <- cbind(samples, s)
	n <- c(n, paste('s',i))
}

##assign column names for each sample created
colnames(samples) = n
samples

##calculate s.mean & s.sd
s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)
s.sd <- sqrt(s.vars)

##print output
print(paste("Sample Mean:", s.means))
print(paste("Sample SD:", s.sd))

##03. calculate the means and sd of 25 sample means
samplemean <- mean(s.means)
samplevars <- var(s.means)
samplesd <- sqrt(samplevars)

##state the relationship
##population mean vs sample mean
popmn
samplemean

##population sd and sample sd
truevar = popvar / 6
samplevars

truesd = sqrt(truevar)
samplesd

