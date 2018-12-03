
library(MASS)
data("Boston")
?Boston
head(Boston)

summary(Boston)

str(Boston)

Boston$chas=as.factor(Boston$chas)
Boston$rad=as.factor(Boston$rad)


hist(Boston$medv)
hist(sqrt(Boston$medv))

Boston$medv_sqrt=sqrt(Boston$medv)

## simpletest linear regression

plot(Boston$lstat,Boston$medv)
cor(Boston$lstat,Boston$medv)

rows=1:nrow(Boston)
trainRows=sample(rows,round(nrow(Boston)*0.7))
trainData = Boston[trainRows,]
testData = Boston[-trainRows,]

model=lm(medv_sqrt~lstat+black,data = Boston)
summary(model)


preds=predict(model,testData)
preds= preds**2


sqrt(mean((testData$medv-preds)**2))




