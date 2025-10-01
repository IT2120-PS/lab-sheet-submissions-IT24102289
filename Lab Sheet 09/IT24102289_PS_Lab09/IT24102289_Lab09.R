setwd("D:\\SLIIT\\Y2S1\\PS\\IT24102289_PS_Lab09")

##Exercise
##01 (i)
##mean=45, sd=2, sample size=25
y <- rnorm(25, mean = 45, sd = 2)
y

##01 (ii)
t.test(y, mu=46, alternative="less")

##p-value is less than 0.05, so do not reject H0 at 5% level of significance.
##Therefore, we can conclude that the true mean baking time of a cookie is 
##less than or equal to 46 minutes
