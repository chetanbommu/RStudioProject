setwd("E:/Data science/Projects/RStudioProject")
getwd()
universalBank=read.csv("universalBank.csv")
str(universalBank)
summary(universalBank)

## if we have a featue with binary data no need to convert them into categorical because if we convert internally it will convert to binary again
## ordinal feature is the one which have an order in it. if there is no order we will consider it as categorical variable

universalBank$Personal.Loan=as.factor(universalBank$Personal.Loan)
universalBank$ZIP.Code=as.factor(universalBank$ZIP.Code)


## spliting
rows=1:nrow(universalBank)
randRows=sample(rows,round(nrow(universalBank)*0.8))
traiData=universalBank[randRows,]
testData=universalBank[-randRows,]


## logistic regression model
model=glm(Personal.Loan~. -ZIP.Code,data = universalBank,family = "binomial")
summary(model)

preds=predict(model,testData,type = "response")


