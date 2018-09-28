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

#Pacotes para cálculos Seis Sigma
# Continuos atributes and count data
if (!require("qcc")) install.packages("qcc")
library(qcc)

# Builds statistical control charts with exact limits for univariate and multivariate cases.
# https://github.com/flaviobarros/IQCC
install.packages('IQCC', dependencies = TRUE) 
library(IQCC)

# This is a package for teaching statistical methods in the field of Quality Science [. . . ] The focus is on teaching
if (!require("qualityTools")) install.packages("qualityTools")
library(qualityTools)

# https://www.rdocumentation.org/packages/SixSigma
# Six Sigma Tools for Quality Control and Improvement
# Functions and utilities to perform Statistical Analyses in the Six Sigma way. 
# Through the DMAIC cycle (Define, Measure, Analyze, Improve, Control), you can 
# manage several Quality Management studies: Gage R&R, Capability Analysis, 
# Control Charts, Loss Function Analysis, etc. Data frames used in the books 
# "Six Sigma with R", Cano et al. (2012) [ISBN 978-1-4614-3652-2] and 
# "Quality Control with R", Cano et al. (2015) [ISBN 978-3-319-24046-6], 
# are also included in the package.
if (!require("SixSigma")) install.packages("SixSigma")
library(SixSigma)
