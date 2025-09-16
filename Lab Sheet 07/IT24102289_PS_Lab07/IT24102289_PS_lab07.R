setwd("D:\\SLIIT\\Y2S1\\PS\\IT24102289_PS_Lab07")

##Exercise
##01.
##x = no of trains arrives after 8.00 a.m.
##We have to find P(10 <= x <= 25
punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

##02.
##We have to find p(x <= 2) when λ = 1/3
pexp(2, rate = 1/3)

##03.(i)
##We have to find P(x > 130)
1 - pnorm(130, mean = 100, sd = 15)

##03.(ii)
##P(X <= x) = 0.95
qnorm(0.95, mean = 100, sd = 15)