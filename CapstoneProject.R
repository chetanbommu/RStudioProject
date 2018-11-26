##Consider the target variable as CustServ.Calls
getwd()
churn_mv=read.csv("churn_MV.csv")

names=colnames(churn_mv)

charCols=c("Churn","Intl.Plan","VMail.Plan","State","Area.Code","Phone")
numCols=setdiff(names,charCols)
numCols


## data tranformation

colToFactos<-function(x){
  x=as.factor(x)
}
churn_mv[,charCols]=lapply(churn_mv[,charCols], colToFactos)
str(churn_mv)

## null values imputation











