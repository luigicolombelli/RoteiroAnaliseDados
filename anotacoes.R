
#antes de realizar calculos de probalidade de uma curva normal, 
#precisamos saber se os dados seguem uma curva normal.
#
# nortest::ad.test(c(3,11,4,3,4,3,1,3))
#
#Anderson-Darling normality test
#
#data:  c(3, 11, 4, 3, 4, 3, 1, 3)
#A = 1.2189, p-value = 0.001463
#
# considera-se normal se p>=0.05
if (!require("nortest")) install.packages("nortest")
library(nortest)
nortest::ad.test(c(3,11,4,3,4,3,1,3))

#Funcao para calculo de probabilidade: pnorm
#
#Exemplo: pnorm(10.5, mean=12.2, sd=1.41, lower.tail = TRUE) 
pnorm(10.5, mean=12.2, sd=1.41, lower.tail = TRUE) 


#analise basica de dados estatisticos
#summary(c(3,11,4,3,4,3,1,3))
summary(c(3,11,4,3,4,3,1,3))

#calculo do desvio padrao
# a <- c(179,160,136,227)
# sd(a)
#[1] 38.57892
# sqrt(sum((a-mean(a))^2/(length(a)-1)))
#[1] 38.57892
sd(c(179,160,136,227))