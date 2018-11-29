data1 = read.csv("C:/Users/phsivale/Documents/Trainings/titanic.csv",
                 na.strings = c(' ','','NA','?','  '))
colsToUse = c('pclass','survived','sex','age','sibsp','parch','fare','cabin','embarked','home_dest')
data1 = data1[,colsToUse]

data1$survived = as.factor(data1$survived)
summary(data1)
## too many missing values
data1$home_dest = NULL
data1$cabin = NULL

###
summary(data1)

###
library(DMwR)
data1 = knnImputation(data1,k = 3)
summary(data1)

### correlation
library(corrplot)
corrplot(cor(data1[,c('age','fare','sibsp','parch','pclass')]),method = 'number')

### 
chisq.test(data1$sex,data1$embarked)
data1$embarked = NULL

### Train Test Split
nrows = 1:nrow(data1)
trainRows = sample(nrows, round(0.7*nrow(data1)))
trainData = data1[trainRows,]
testData = data1[-trainRows,]

### Model
model1 = glm(survived~.-parch-fare,
             data=trainData,
             family = binomial(link = "logit"))

summary(model1)
