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


preds=ifelse(preds>0.5,1,0)

val=table(testData$Personal.Loan,preds,dnn=list("actual","Pred"))

accuracy=(898+52)/1000
## precetion:- how many predictions are true events
## Recall:- out off all events how many are predicted
recal= val[2,2]/(val[2,1]+val[2,2])
presision= val[2,2]/(val[1,2]+val[2,2])




















