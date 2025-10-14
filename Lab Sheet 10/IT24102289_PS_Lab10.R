setwd("C:\\Users\\it24100435\\Desktop\\IT24102289")

#Q1
observed <- c(55, 62, 43, 46, 50)
prob <- c(0.2, 0.2, 0.2, 0.2, 0.2)

chisq.test(x=observed, p=prob)

#Q2
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt"

housetasks <- read.delim(file_path, row.names = 1)
housetasks

chisq <- chisq.test(housetasks)
chisq

#Exercise 

observed <- c(120, 95, 85, 100)
expected <- c(0.25, 0.25, 0.25, 0.25)

chisq.test(x = observed, p = expected)











