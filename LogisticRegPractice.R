setwd("E:/Data science/Projects/RStudioProject")
getwd()
universalBank=read.csv("universalBank.csv")
str(universalBank)
summary(universalBank)

## if we have a featue with binary data no need to convert them into categorical because if we convert internally it will convert to binary again
## ordinal feature is the one which have an order in it. if there is no order we will consider it as categorical variable


universalBank$Family=as.factor(universalBank$Family)
universalBank$Education=as.factor(universalBank$Education)
universalBank$Personal.Loan=as.factor(universalBank$Personal.Loan)
universalBank$Securities.Account=as.factor(universalBank$Securities.Account)
universalBank$CD.Account=as.factor(universalBank$CD.Account)
universalBank$Online=as.factor(universalBank$Online)
universalBank$CreditCard=as.factor(universalBank$CreditCard)
universalBank$ZIP.Code=as.factor(universalBank$ZIP.Code)





