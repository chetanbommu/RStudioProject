# My First program in R
# Data types

a=10 #will create a numaric object a and 10 is assigned ad value
class(a) ## will retunr the data type assigned to it

a=10.5 # Previous defind variable 'a' is destroyed and it recreates again with new value
a=10L # Creates a integer data vaiable, here 'L' is treated as long integer
class(a)

a="10L" # creates a charector data type bacause we explicitly mentiond in ''
class(a)



## Chatector data types

a="samsung"
class(a)
a='apple'
class(a)


## Type casting
a=10 # by default it is treated as numaric
class(a)

a=as.integer(a)
class(a)

a=10.5
class(a)

a= as.integer(a)
a

b=as.numeric(a)
b



## converstion from charector to numaric

a='123'
class(a)

a=as.integer(a)
class(a)

a='123.5'

b=as.integer(a)
b
b=as.numeric(a)
b

as.character(b)


## validate(check) the data type of a object

is.integer(a)
is.character(a)


a="apple"
is.numeric(a)


## Conversion from charector to factor

a="apple"
a=as.factor(a)
a


## case sensitive

a
A # because values are casesensitive it will give an error

A=123
A


## boolean data type
a=TRUE
b=FALSE
class(a)
class(b)

a=T
b=F
class(a)
d="T"
class(d)


c=true ## cant take the input beacuse logical should be in capital letters


## vector

a= c(10,20,30,40)
length(a) # Will retuen the number of elemnts in the object

a[1] # in R indexing starts with 1, first element will be printed

b= a[1]

a[3]
a[1:3] # : colon operator will create a sequence

1:5

a[1:2]
a[2:1]
5:1

## vector sclicing
## negative indexing
a[-1] # - is exclusion, first element will be excluded
a[-1:-2] ## first and second elements will be excluded
a[-c(1,4)] ## if we want to exclude first and fourth
a[-c(1,3)]

## Vector append
a[5]=50 # fifthe element is added to the vector
a

a[7] = 70 # sixth and seventh element will be added sixth as "NA" and seventh is value
a 


## Deletion

a = a[-4] # exclude the 4th emlement and asign the remining elements to 'a' again
a

a = a[-2]
a

a[4]=60
a
class(a)

## Charector vectors
a= c("M","M","F","F","M","F")
a
class(a)

a=as.factor(a)
a

class(a)


## Mixed data types

a = c(1,2,3,'A',"B",'c',T,F) # least flexible datatype will be considerd
class(a)
a

a=c(1,2,3,4,5)
b=c(6,7)
d=c(a,b)
d

a+b # this will not work for concatination 

a=c(1,2,3,4)
b=c("M","F")
class(a)
class(b)
d=c(a,b)
class(d)

## Matrices
a=c(1,2,3,4)
b= matrix(a,2,2)
b
b= matrix(1:6,nrow = 3,ncol = 2)
b
b= matrix(1:7,nrow = 3,ncol = 2)
b
b= matrix(1:6,nrow = 3,ncol = 2,byrow = T) # insert the data in row wise
b

## matrices sliing

b[1,1] # first row first colum which gives first element
b[1,] # first row
b[,1]# first column

b[1]
b[5]
b[1:2,1:2] #print the sequence of rows and columns
b[-1,] # sclice the first row of the matrix
b[,-1] # sclice the first column of the matrix

a=c("a","b","c","d")
b=matrix(a,2,2)
b
b[3]

## Data Frames
id=c(1,2,3,4)
age=c(10,20,30,40)
gen=c("M","F","M","F")

#create a data frame df1

df1=data.frame(id,age,gen)


str(df1) # structure of the data frame
View(df1) # for checking viewing the data frames in tabler format

# print few records from dataframe

head(df1) # head will print the first six records of the data frame
tail(df1) # tail will print the last six records of the data frame

head(df1,2) # will print firsrt 2 records
tail(df1,2) # will print last 2 records

## inspect the dataset
str(WA_American.Time.Use.Survey)

##change the datatype of the variable
WA_American.Time.Use.Survey$Weekly.Earnings = as.numeric(WA_American.Time.Use.Survey$Weekly.Earnings)    # here $ is period in R language
str(WA_American.Time.Use.Survey) 

head(WA_American.Time.Use.Survey)
head(WA_American.Time.Use.Survey,5)

## Read a CSV  file using program
?read.csv()
dfcredit=read.csv("E:/Data science/WorkSpace/DummyData.csv",header = T,sep = ",",as.is = T)
str(dfcredit)

getwd() ## retuns the current working location
setwd("E:/Data science/WorkSpace")
getwd()

temp1=read.csv("DummyData.csv")
str(temp1)

?read.delim()
temp2=read.delim("DummyData.csv",sep = ",")

## data frames slicing
temp1[,1:3] ## reads the first 3 colums from the data frame with all rows
temp2=temp1[,1:3] ## will assign the clumns from 1 to 3 with all rows

temp2=temp1[1:10,] ## will assign the rows from 1 to 10 with all colums
temp2=temp1[100:110,3:6] ## will assign the give range rows and columns

temp2=temp1[,c(2,4,6,8)] # will gives the specified columes 
 
colnames(temp2) # will print the coloum names

temp2=temp1[,c(1,9,5,3,7)] # selection need not to be in sequntiol

temp2=temp1[,-c(1:5)]
temp2= temp1[,-c(1,5,6)]

seq(1,10,2) # prints the sequence of odd numbers
seq(2,10,2) # prints the sequence of even numbers

# select all odd rows

temp2=temp1[seq(1,nrow(temp1),2),]

#select all even clums
temp2=temp1[,seq(2,ncol(temp1),2)]

#deleting columns

temp2 = temp2[,-c(1:2)] # remove particular colums from the dataset

temp2$TicketType=NULL # we can delete the colums by assigning NULL to the column

temp2=temp1[,c( "requestor" , "ITOwner"  ,  "TicketType", "Priority")]

#1-10-2018

#operations
## Arthimatic operations

a=10
b=2
a+b

c=a+b # addition
c
c=a-b # substration
c
c=a*b # Multiplication
c
c=a/b # division
c
c=a%%b # reminder
c
c=a**b # power
c
c=a^b # power
c


#operations on vectors

a=c(1,2,3,4,5)
b=c(10,20,30,40,50)

a+b # for vectors it is element wise operation

a=c(1,2,3,4) 
b=c(10,20) 

a+b # repeats the shorter vector to match the length of longer vector


a=c(1,2,3,4) 
b=c(10,20,30)

a+b #Warning message: In a + b : longer object length is not a multiple of shorter object length

## on data frames


WA_American.Time.Use.Survey$Tot.Erning=WA_American.Time.Use.Survey$Weekly.Earnings*WA_American.Time.Use.Survey$Weekly.Hours.Worked
# in the data frames the operations are row by row


## Comparision operator


churn2= churn[churn$Weekly.Earnings>250,] ## select all the rows where weekly earnings are greater then 250
churn2= churn[churn$Weekly.Earnings>=250,] ## select all the rows where weekly earnings are greater then or equals to 250


churn2= churn[churn$Gender=="Male",] ## comparings names should be case sensitive


churn2= churn[churn$Children %in% c(1,2),] ## in operator, this will be used to featch records based only if it is availabel in a vector

## Logical operator

churn2= churn[churn$Gender=="Male" & churn$Employment.Status=="Employed",] # using the &(And) operation in the conditions


churn2= churn[churn$Gender=="Male" | churn$Employment.Status=="Employed",] # using the |(OR) operation in the conditions

churn2= churn[churn$Gender=="Male" & churn$Gender=="Female",] # this will return 0 records 

## merges or joins

##inner (Accepts the data which are common only)
## Left
## right
## full/ outer

## we can only join 2 tables at a time


sample1<-sample

sample$requestor=NULL
sample$RequestorSeniority=NULL
sample$ITOwner=NULL
sample$FiledAgainst=NULL
colnames(sample)

sample$Severity=NULL


colnames(sample1)
sample1$Satisfaction=NULL
sample1$daysOpen=NULL
sample1$Priority=NULL
sample1$Severity=NULL


## There should not be a duplicate data for the key which we are using for merge 
## if there are duplicates, it creates a cartesians

### steps to avoid cartesian
# 1. Remove the duplicates
# 2. Use the multiple key for merging




df3=merge(sample,sample1,by="ticket") ## inner merge
df3=merge(x=sample,y=sample1,by="ticket") ## inner merge
df3=merge(x=sample,y=sample1,by="ticket",all.x = T) ## left merge
df3=merge(x=sample,y=sample1,by="ticket",all.y = T) ## right merge
df3=merge(x=sample,y=sample1,by="ticket",all.x=T,all.y = T) ## full merge


## using multiple keys 
df3= merge(x=sample,y=sample1, by=c("ticket","Priority")) ## for considering two colums as comparision key
df3= merge(x=sample,y=sample1, by.x="ticket",by.y="ticketId") ## if the column names are different we use this way

df3= merge(sample=sample[1:10,],sample1,by="ticekt") ## this will merge the observations in 10 records of sample and complete recors in sample1

rm(temm2) ## remove the data frame from the memory


## rename the column

sample$id<-sample$ticket
sample$ticket=NULL

############### Naveen notes ###################

## -- id passed in the "by" should be unique data. It should not have duplicate data
## -- if there is duplicates, merge creates cartesians

#     df1                 df2
# id dept desg        id dept sal
#  1  A   AB<--    --> 1   A   100
#               --
# 1   B   BA<--    --> 1   B   200
#
#
## output as follows
# id  dept  dept  sal
# 1   A     AB    100
# 1   B     AB    200

# to solve the issue with the duplicates, use two or more columns which results in unique columns as follows
# df3 = merge(x=df1, y=df2, by=c("id", "dept")) # merge using id and dept to solve the above issue
# if the columns used to merge has same column names, we can rename the columns to make the merge
# if the column name on the right side is diff from the name on the left side dataframe, we have to rename the column on the right dataframe or use it as follows by specifying the name
# ex: df3 = merge(x=df1, y=df2, by.x = "id", by.y = "user_id") ## here id and user_id represent same data with different column names
# otherwise, we can rename the column before merging as follows:
# df2$id = df2$user_id - assign the user_id to the id then delete the user_id column
# df2$user_id = NULL - deleting the user_id column


# to remove a dataframe: rm(df2)


id=c(1,2,3,4,5)
gen=c("M","M","F","M","F")
sal=c(100,200,300,400,500)

df1=data.frame(id,gen,sal)


id=c(1,2,3,4,6)
dept=c("A","B","A","B","A")
age=c(10,20,30,40,60)

df2=data.frame(id,dept,age)

#inner merge
df3=merge(x=df1,y=df2,by="id")
df3

#left merge
df3=merge(x=df1,y=df2,by="id",all.x = T)
df3

#right merge

df3=merge(x=df1,y=df2,by="id",all.y=T)
df3

#full merge

df3=merge(x=df1,y=df2,by="id",all.x=T,all.y = T)
df3


## duplicates

id=c(1,1,2,2)
dept=c("A","B","A","B")
age=c(10,20,30,40)

df1=data.frame(id,dept,age)


id=c(1,1,2,2)
dept=c("A","B","A","B")
gen=c("F","M","F","M")

df2=data.frame(id,dept,gen)

## inner merge
df3=merge(x=df1,y=df2,by="id") ## it will create a cartisian here because of duplicate data
df3

## merge with a composite key

df3=merge(x=df1,y=df2,by=c("id","dept"))
df3

## duplicates in the dataframes

id = c(1,1,1,1,2,2,2,2)
mon=c(1,2,3,4,1,2,3,4)
bill=c(100,101,102,103,102,103,101,100)

bill=data.frame(id,mon,bill)

id=c(1,2)
gen=c("M","F")
state=c("A","B")

dem=data.frame(id,gen,state)

## merge bill and gen

bill_dem=merge(x=bill,y=dem,by="id",all.x = T)

bill_dem

# if there are duplicates in one data frame there is not problem if there are duplicates in both the frames then there is a problem

## conditional statement
## controll structures 

age=12

if(age>18){
  age_cat="Adult"
}else{
  age_cat="Chaild"
}

age_cat

## for analytics we won't use exceptional handeling for 


a=14

if(a%%2 == 1){    ## '{' should start aftet the 'if' other wise it will not trate as conditional statement
  result="ODD"
}else
  result="EVEN"    ## else should be given next to the '}' other wise it will not be treated as conditional statment 


result

## multiple conditional statement

age=35

if(age<=25){
  agegrp="0-25"
}else if(age<=35){
  agegrp="25-35"
}else if(age<=45){
  agegrp="35-45"
}else{
  agegrp="45+"
}

agegrp

age=200

if(age<=18){
  agegrp="0-18"
}else if(age>18 & age<=36){ # conditional statement with logical
  agegrp="18-36"
}else if(age>36 & age<=48){
  agegrp="36-48"
}else{
  agegrp="48+"
}

agegrp


### ifelse function

age=20 

age_cat= ifelse(age>=18,"Adult","Child")
age_cat

### multiple checks

agegrp= ifelse(age<=18,"0-18",ifelse(age>18 & age<=36,"19-36",ifelse(age>36 & age<48,"36-48","48+")))
agegrp


## (Day.Mins>200 | Eve.Mins>200) & State="FL"



### Loops
# for loop
# for loop is auto increment 
# it's a good practice to reset the variables before we start using it 
# if we are using 'ifelse' function we don't need to use the index it will take automatically

age=c(36,21,54)
agegrp=c()
for(i in 1:length(age)){ # here 'i' is auto increment
  if(age[i]<=25){
    agegrp[i] = '0-25'
  }else if(age[i]>25 & age[i]<= 35){
    agegrp[i] = '25-35'
  }else if(age[i]>35 & age[i]<=45){
    agegrp[i]='35-45'
  }else
    agegrp[i]='45+'
  print(agegrp[i])
}

agegrp

## ifelse function by default performs a element wise operation no need to use index
## here for loop is not required

agegrp=ifelse(age<=18,"0-18",ifelse(age>18 & age<=36,"19-36",ifelse(age>36 & age<48,"36-48","48+")))
agegrp

## iterations on data frame


for(i in 1:length(df3$age)){
  if(df3$age[i]<=25){
    df3$agegrp[i] = '0-25'
  }else if(df3$age[i]>25 & df3$age[i]<= 35){
    df3$agegrp[i] = '25-35'
  }else if(df3$age[i]>35 & df3$age[i]<=45){
    df3$agegrp[i]='35-45'
  }else
    df3$agegrp[i]='45+'
}

df3$agegrp=NULL

df3$agegrp=ifelse(df3$age<=18,"0-18",ifelse(df3$age>18 & df3$age<=36,"19-36",ifelse(df3$age>36 & df3$age<48,"36-48","48+")))


# create vector with odd and even numbers all the even number should go to one vector and odd numbers to other vector

numbers=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
odd=c()
even=c()

for(i in 1:length(numbers)){
  if(numbers[i] %% 2==0){
    even[length(even)+1]=numbers[i]
  }else
    odd[length(odd)+1]=numbers[i]
  
}

even
odd

## another way to write the same program

numbers=c(10,11,12,13,14,15)
odd=c()
even=c()

for(i in 3:length(numbers)){
  if(numbers[i] %% 2==0){
    even=c(even,numbers[i])
  }else
    odd=c(odd,numbers[i])
  
}

even
odd

## another way to write the same program
numbers=c(10,11,12,13,14,15)
odd=c()
even=c()

for(i in numbers){
  if(i %% 2==0){
    even=c(even,i)
  }else
    odd=c(odd,i)
  
}

even
odd


### packages
# installing packages 
# Method 1:- goto tools and click on install packages choose install from as repository(CRAN,CRAN extra) when the internet is available
# Method 2:- install from the offline install packages choose install from Package archive file choose from the local network
# Method 3:- with the help of code we can install ## install.packages("dplyr")
## to run or use the installed packages we need to load the library with ## library(dplyr)
# 

install.packages("dplyr")

filter_(a) ## we havent included the dplyr package (Error: could not find function "filter_")
library('dplyr') ## loading the packages
library('dplyr',lib.loc = "~/R/win-library/3.5") ## need to change the  location if we install the package in different location

detach("package:dplyr",unload = T) ## for detaching the package for using 



?detach

###funtions
## math functions

a=10

log(a) # log function
log2(a) 

## sqrt

sqrt(a)

## rounding

round(sqrt(a),2) # rounded to two decimal places 
round(10.6) 

## ceiling

ceiling(10.1) # round to the next heighest integer which returns 11
ceiling(10.00000001)

## floor

floor(10.99) # lowest integer which returns 10




### Column binding and row binding ######
#binding will be usfull when we separate column and do analysis then attach the removed columsn
# for 'cbinding' the number of rows should be same
# for 'rbinding' the data types and the structure should be same and also same number of columns from the different dataset

id=c(1,2,3,4,5)
gen=c("M","F","F","M","M")
age=c(10,20,30,40,50)
sal=c(100,200,300,400,500)

df1=data.frame(id,gen,age,sal)
df1

dfa=df1[,1:2]
dfb=df1[,3:4]
dfa
dfb

dfb$comp=sal/age

dfc=cbind(dfa,dfb)
dfc

#rbind
dfa=df1[1:3,]
dfb=df1[4:5,]
dfc=rbind(dfa,dfb)
dfc



cbind() # coulmn binding
rbind() # row binding


## Data exploration and inspection

head(df1) # prints the first 6 records
tail(df1) # prints the past 6 records
head(df1,4) # prints the first 4 records
tail(df1,4) # prints the last 4 records
 
dim(df1) # no of rows, no of col
nrow(df1) # no of rows
ncol(df1) # no of col
colnames(df1) # prints the list of column names
names(df1)# prints the list of column names
names(df1)=c("new col") ## assign a new column names
names(df1)
names(df1)=c("custID","Dept","Age")
names(df1)

summary(df1) ## gives information about dataframes column wise
summary(WA_American.Time.Use.Survey)


### table
# table will give the count of dinnferent combinations in a particular row
# use on factor variable 
# numaric column with very few uniqe values
# don't use tablem on numaric columns with many unic values

table(df1$Dept) 
table(WA_American.Time.Use.Survey$Age.Range)

## table with multiple columns

table(WA_American.Time.Use.Survey$Age.Range,WA_American.Time.Use.Survey$Gender)

df3=table(WA_American.Time.Use.Survey$Age.Range,WA_American.Time.Use.Survey$Gender,WA_American.Time.Use.Survey$Children)

# proportion are used for getting percentage
prop.table(table(churn$Gender)) # will give the proportions of the given column

prop.table(table(churn$Gender, churn$Age.Range)) # using two columns for displaying proportions




## Sorting or ordering the data

df1=df1[order(df1$Age),] # sorted the data in assending order based on age

df1=df1[order(df1$custID),]
df1

df1=df1[order(df1$custID,decreasing = T),]
df1

## functions from installed packages

install.packages("RODBC") # this package is for database related 

library(RODBC)

dbconnect = odbcConnect(dsc=mysqldb,uid="",pwd="")
# dsc is the location of the data basee which we places in the server along with the port number
# uid is the user name for accessing the database 
# pwd is the password for accessing the DB
# to restrict the access we can ask administrator for password less token

datafromdb= sqlQuery(channel = dbconnect,query = "select * from db.tablename")
# whic will copy the complte data as a dataframe
# if the records are more, don't dump all the columns directly dump only the required column to the dataframe
# with the bigdata we need to connect with jdbc connection 

######### with the UI aproach #######
# click on connections --> new connection


###### Functions from other packages ##############
library(dplyr)

?select

colnames(churn)

churn2=select(churn,"Weekly.Earnings","Grooming","Housework") 
churn2=select(churn,starts_with("E")) # will assign the columns which starts with 'E'
churn2=select(churn,ends_with("ing")) # will assign the columns which ends with "ing"


## filter
?filter

churn2=filter(churn,Gender=="Female")
churn2=filter(churn,Age>=25&Gender=="Female")
churn2=filter(churn,Age>=25,Gender=="Female")

## rename


churn2=rename(churn2,Education_Level=Education.Level,Weekly_Earnings=Weekly.Earnings) # renaming the coulmn names


## arrange

churn2=arrange(churn,Age) 
churn2=arrange(churn,Age,Children) ## arrangeing multiple columns
churn2=arrange(churn,Age,desc(Children)) # arrangin with desending order

churn2= arrange(churn,Gender) # arrangement with gender

## mutate - this is used to create the columns in the existing dataframe
# this is useful to create multiple columns at the same time
# in mutate the column which is create first can be used next in the same line execution is from let to right

?mutate

churn$col1= ** operation
Churn$col2= churn$col1 / churn$churn

churn2=mutate(churn,Total.Salary=Weekly.Earnings*Weekly.Hours.Worked,Total.Percent=Total.Salary*0.001)

## charecter functions
## date functions

install.packages("lubridate")
install.packages("stringr")

library(lubridate)

date="04/10/2018" 
#date=as.Date(date)  Avoid recreating dates
date1=as.Date(date,"%d/%m/%y") # here value seperaters are %
date1

date="04-10-2018"
date1=as.Date(date,"%d-%m-%y") # here value seperaters are -
date1

date="01-Jan-2018"
date1=as.Date(date,"%d-%b-%y") # here %b is month three letter format
date1

date="04-10-18" # R will take the nearest origin value 
date1=as.Date(date,"%d-%m-%y") 
date1

date="04-10-99" # R will take the nearest origin value 
date1=as.Date(date,"%d-%m-%y") 
date1


Sys.Date()
mon=month(date1)
mon

day=day(date1)
day

year= year(date1)
year

weekday=weekdays(date1)
weekday

weekday=weekdays(Sys.Date())
weekday

weekn=week(Sys.Date()) # returns the number of week in a year
weekn

weekn=week("2018-01-08")
weekn

#### charecter functions

a="apple"
length(a)

## string length
nchar(a) # length of a string

a1= substr(a,1,2)
a1

a2= substr(a,3,5)
a2


## replacement or substitution

a="01/01/2018"

# sub and gsub

a= sub(pattern = "/","-",a) # only replace the first instance of pattern
a

a= gsub(pattern = "/","-",a) # only replace the all instance of pattern
a

## paste function

first="Abcd"
last="efgh"

name=paste(first,last) # by default it concatinates with a single space
name=paste(first,last,sep="") # no space seperater is having a blank value
name

## string split

name="apple-iPhone"

name_split=strsplit(name,split = "-")
name_split
# strsplit will return a list 
# here list is a three dimentional object 
# using 'unlist' will return the vector

date="01/01/2018"

date_split= unlist(strsplit(date,split = "/"))
date_split


## sqldf

install.packages("sqldf")
library(sqldf)

# Weekly.Earnings is not found error because we are using . inbetween the column name
churn2=sqldf("select * from churn where Weekly.Earnings>200") # we should not use . in the sql queries 


## we are renaming the colums and replacing the . with _ then we need to write a query
churnnames=colnames(churn2)
churnnames

churnnames=gsub(churnnames,pattern = "\\.",replacement = "_")
churnnames

names(churn2)=churnnames
colnames(churn2)

churn3=sqldf("select * from churn2 where Weekly_Earnings>200")



#### 05-10-2018 #####


getwd()
train=read.csv("train.csv")
train=train[1:10000,]
train$Stay_In_Current_City_Years=replace(train[,"Stay_In_Current_City_Years"],"4+",4)

train1=head(train,500)
table(train$Marital_Status)
table(train$Age,train$Marital_Status)

table(train$Age)

str(train)

## 1.	How do we convert "4+" in "Stay_in_current_city_years" variable  to a value of 4?

## in the data frame if the column is factor it won't allow us to change the data

## convert Stay_in_current_city_years to chatecret

train$Stay_In_Current_City_Years=as.character(train$Stay_In_Current_City_Years) ## column to charecter
class(train$Stay_In_Current_City_Years)

## now the column is converted in to charecter

train$Stay_In_Current_City_Years=ifelse(train$Stay_In_Current_City_Years=="4+",4,train$Stay_In_Current_City_Years)

table(train$Stay_In_Current_City_Years)

## by using for loop
temp=train$Stay_In_Current_City_Years
table(temp)

for(i in 1:length(temp)){
  if(temp[i]=="4+"){
    temp[i]=4
  }else{
    temp[i]=temp[i]
  }
}
train$Stay_In_Current_City_Years=temp


## in other way we can also assign the data 

train[train$Stay_In_Current_City_Years=="4+","Stay_In_Current_City_Years"]=4


# 2.	How many rows exist with a marital_status = 0?

# solution 1
task2=train[train$Marital_Status==0,"Marital_Status"]
length(task2)

# solution 2
nrow(train[train$Marital_Status==0,])

# 3.	How many rows exist within the age_group of "26-35" with a marital status =0?

# solution 1
task3=train[train$Age=="26-35"&train$Marital_Status==0,"Marital_Status"]
length(task2)

# solution 2
nrow(train[train$Age=="26-35"&train$Marital_Status==0,])

# solution 3
nrow(subset(train,Age=="26-35"&Marital_Status==0))
table(train$Age,train$Marital_Status)


## 4.	How many distinct users exist within the age_group of "26-35" with a marital status =0?
#solution1
task4=train[train$Age=="26-35"&train$Marital_Status==0,]
length(unique(task4$User_ID))

# solution 2
length(unique(train[train$Age=="26-35"&train$Marital_Status==0,]$User_ID))

##5.	How many distinct age groups exist?

length(unique(train$Age))

##6.	How many distinct User_IDs exist?
length(unique(train$User_ID))

## 7.	Which product_ID occurs the most frequently?

train$Product_ID=as.character(train$Product_ID) ## column to charecter

a=data.frame(table(train$Product_ID))
a
names(a)=c("product_id","freq") ## renaming the names for convinence 
colnames(a)
b=a[order(a$freq,decreasing = T),] ## sorting the data based on the order
View(b)
b[1,1]

## note:- sort uses the by value and order uses by index

##8.	What is the average purchase rate of gender = f & gender = m?

aggregate(train$Purchase,list(train$Gender),mean)

## 9.	What is the average value of purchase when gender = f or age_group = "0-17"

a=train[train$Gender=="F"|train$Age=="0-17",]
b=aggregate(a$Purchase,list(a$Gender,a$Age),mean)
mean(b[,"x"])

##10.	What is the average value of purchase within the odd rows of train.csv?

a=train[seq(1,nrow(train),2),]
b=mean(a[,"Purchase"])

##11.	create a new dataset (train2) that does not have any row in train.csv that has  missing value

# solution1
a = train[complete.cases(train),]

#solution 2
a= na.omit(train)

# solution 3

#b=is.na(train)


a=train[rowSums(is.na(train))==0,]



## 12.	In which city_category do most of the users within age group "0-17" live?
#solution 1:
a=data.frame(table(train$Age,train$City_Category))
b=a[a$Var1=="0-17",]
c=b[order(b$Freq,decreasing = T),] ## sorting the data based on the order
c[1,2]

#solution 2:
a=which.max(table(train[train$Age=="0-17","City_Category"]))

#solution 3:
a=data.frame(table(train[train$Age=="0-17","City_Category"]))
b=a[order(a$Freq,decreasing = T),] ## sorting the data based on the order
b[1,1]


## 13.	For how many rows is "Product_category_2" missing a value?

## Solution 1:-
sum(is.na(train$Product_Category_2))
## Solution 2:-
nrow(train[train$Product_Category_2=="NA",])


## 14.	Which value of "Product_category_1" occurs the most whenever product_category_2 value is missing?
train=read.csv("train.csv")

a = train[is.na(train$Product_Category_2), ]
b=data.frame(table(a$Product_Category_1))
b=b[order(b$Freq,decreasing = T),]
b[1,1]

## 15. Of all the users that exist in "test.csv", how many of them, also exist in "train.csv"


test <- read.csv("test.csv")

colnames(test)
colnames

train_sub = train[1:1000, ]
test_sub = test[1:1000, ]

###Note: the following solution 1 and 2 can be used only when there are unique values present in the common columns. If there are duplicate values, we can use merges using composite keys(i.e., using two or more columns data)
##Solution 1: 
#d = merge(train_sub, test_sub, by.x = "User_ID", by.y = "User_ID")
# OR
#d = merge(train_sub, test_sub, by = "User_ID") ## since user_id is a common column name

##Solution 2: 
#library(dplyr)
#d = inner_join(train_sub, test_sub, "User_ID")

## Note: we can use dplyr package functions instead of inner merge as it is reduces the load when doing on the columns with duplicate values
## use intersect and setdiff
##Solution 3: 
library(dplyr)

d = intersect(train$User_ID, test$User_ID)
length(d)
#Note:
# use the following to get the dataframe instead of the vector found in the above
c_train = train_sub[,c("User_ID", "Age")] ## here age is used instead of product id because both the dataframes train and test has unique combinations of user_id and product_id
c_test = test_sub[,c("User_ID", "Age")]
d = intersect(c_train, c_test)

## Note: Difference between intersect and setdiff is both functions first calculate the unique values in the dataframes and intersect returns the common values in them while setdiff returns the values that are not common. Since the User_ID though duplicate, they are common in both the train and test datasets and hence setdiff returns empty 
##d = setdiff(train$User_ID, test$User_ID)


## 16.	Of all the users in "train.csv" how many of them also exist in "test.csv"

a=merge(train1,test1,c("User_ID"))

## 17.	What is the average purchase of customers who exist in "train.csv" but not in "test.csv"

#solution 1
a=train1[!(train1$User_ID%in%test1$User_ID),]
colnames(a)
b=mean(a[,"Purchase"])
b
#solution2
a=anti_join(train1,test1,"User_ID")
colnames(a)
b=mean(a[,"Purchase"])
b

# 18. How many distinct combinations of "user_id" & "Product_id" are available in train.csv?


#ex:-
 a=c(1,2,2,1)
 b=c(123,124,124,125)
 d=c(1,12,13)
 df=data.frame(a,b,d)
 
c=(df[,c("a","b")])
unique(c)
c


length(unique(paste(df$a,df$b, sep="_")))
length(unique(train$User_ID,train$Product_ID))


#solution 1
length(unique(paste(train$User_ID,train$Product_ID, sep="_")))
#solution 2
nrow(as.data.frame(unique(test$User_ID,test$Product_ID)))
#solution 3
c = unique(train[,c('User_ID','Product_ID')])
count(c)



# 19.	Among all the variables from "Gender" to "Product_Category_3":
# A)	Calculate the average purchase rate for all the distinct values of each variable

length(train)
ncol(train)-1
a=aggregate(train$Purchase,list(train[,1]),mean)
nrows(a[])
df1=data.frame()
total<-NULL
for(i in 3:ncol(train)-1)
{
  print(colnames(train[i]))
  a=aggregate(train$Purchase,list(train[,i]),mean)
  total<-rbind(data.frame(cat =c((colnames(train[i]))),a),total)
  
}
table(train$Product_Category_3)

# B)	identify the variable that has the highest lift in purchase rate
# (For example, if city has 3 distinct values (A,B,C) with average purchase rate of 	100,200,300 & overall average of 200 - lift is (300/200 - 100/200) 
# i.e., (highest average value/ overall average purchase - lowest average value/ 	overall average purchase)

var1 <- as.data.frame(aggregate(train$Purchase,list(train[,6]),mean))
mean(var1$x)
maxvalue <- var1[which.max(var1$x),"x"]
maxvalue
minvalue <- var1[which.min(var1$x),"x"]
minvalue

lift <- (maxvalue-minvalue)/mean(var1$x)


lift_t <- NULL

for(i in 6:10)
{
  var1 <- as.data.frame(aggregate(train$Purchase,list(train[,i]),mean))
  
  maxvalue <- var1[which.max(var1$x),"x"]
  
  minvalue <- var1[which.min(var1$x),"x"]
  
  lift <- (maxvalue-minvalue)/mean(var1$x)
  
  lift_t<-rbind(data.frame(cat =c( (colnames(train[i]))),lift =c(lift)),lift_t)
  
  
}

lift_t
print(lift_t[which.max(lift_t$lift),])

#  20.	Write a function that takes variable name as input & gives out the frequency of occurrence table of the distinct values of the variable

test_fun <- function(x){
  print(x)
  table(train[,x])
}

test_fun("Gender")

#  21.	Write a function that takes variable name & creates dummy variables:
#  For example, if we give age as input to the function, then the function creates 7 	distinct 	columns named Age_0-17, Age_55+ so on.,
#  For each of the 7 columns, it gives a value of 1 to the row if the value belongs to the 	column - i.e., Age_0-17 will be 1 only if Age = "0-17" else it is a 0.

### create a placeholder a for dummy variable for  variable b 

### dummy function 
dummy = function(y){
  a=data.frame(id=rep("",len=length(y)))
  for(level in unique(y)){
  a[paste("dummy", level, sep = "_")] <- ifelse(y == level, 1, 0)
}
  return(a)
}

#  example : 
b=c("m","f","m","f","m")
unique(b)
dummy(b)





## 08/10/2018
## functions
## Aggregate
## aggregate(ColumnName,Groupby,fun)
## generally we will do this on factors only

aggregate(train$Purchase,list(train$Gender),mean) ## returns the mean value based on gender

aggregate(Purchase~Gender,data = train,mean) ## preferable syntax in R 


## apply 
## when we want to compute data in row wise and column wise apply function will be used
## margin=1 means row wise and margin =2 is column wise
# apply is used with matrix and data frames

id=c(1,2,3,4,5)
sal=c(100,200,300,400,500)
age=c(10,20,30,40,50)

df=data.frame(id,sal,age)

## mean in row wise
apply(X=df,MARGIN =  1,FUN =  mean) 

## mean in column wise

apply(X=df, MARGIN = 2, FUN = sum)
apply(X=df, MARGIN = 2, FUN = max)

### lapply
# by default lapply will be a list
# if at all we want output as list we use lapply
# lapply is usefull only on vectors

a=c(10,20,30,40,50)

divby2=function(x){
  
  return(x/2)
}

divby2(a)

lapply(a, divby2)


## statistical functions
## Quantitative 
# 1. Constinues variables
# 2. Ordinary
# 3. binary
## Quantitative
# 





## Statistics are of two types
# 1. Descriptive statistics(N) (Population) we will compute on the complete data 
# 2. Inferential(n) (Sample) # we will do it on sample data because the original data is very heavy

## Measures of central tendency
# mean # 
# median
# Q1 is 25th percentail and Q3 is 75th percentail

## measures of spread
# variance
# standard deviation
# IQR (Q3-Q1)
# Range(max-min)

## 09/10/2018

# Distribution #3 distributions are nothing but categorizing the continues variabls to small bins 
# a frequesnct distributions can be ploted as histogram graph
# histogram chart is a continues chart which is a continues graph like salary ranges
# if the shape of histogram is symatraic we call is a noraml distribution
# if the shape of histogram is asymatraic we call is a skewed distribution
# for a symatric normal distribution mean and median values are same
# when we will have out layers in the data it is good to show the 25th and 75th percentail which also covers the 50% of the observation
# salaries always a right sqewed distribution
# board marks are left sqewed distribution
# in right sqewed mean will be right to the median
# in left sqewed mean will be left to the median


## Properties of normal distribution
#


##10/10/2018

#11/10/2018


#16/10/2018
# install titanic library

install.packages("titanic")


# 23/10/2018

## t-test

## one smaple and one sided t-test

x= c(999,998,1000,1001,1003,996,1000,1002,1004,1009,1004,1003,995,1001,1001)
mean(x)


## H0: mean(x) <=1000
## HA: mean(x) >1000

t.test(x,mu=1000,alternative = "greater")
## degrees of freadom = number of observations - 1
## t cretical value is 1.19 for the above sample
## p value is 0.125 which is >0.05 so accept the null hypothesis


## one smaple and two sided t-test
## H0: mean(x) =1000
## HA: mean(x) !=1000

t.test(x,mu=1000,alternative = "two.sided") # two sided


#two sample two sided
# H0: Mean(girls)<=mean(boys)
# HA: mean(girls)>mean(boys)

girls = c(7.8,8.9,4.4,5.6,7.9,9.2,8.1,8.6,7.4,7.2,7.1,9.5,8.8,6.0,7.6)
boys = c(8.9,4.9,5.6,8.9,6.9,7.1,8.6,7.4,7.2,7.1,9.5,8.8,6.0,7.6,5.4)

t.test(x=girls,y=boys,alternative = "greater")



# two samples and two sided
# H0: mean(girls) = mean(boys)
# HA: mean(girls) != mean(boys)

t.test(x=girls,y=boys,alternative = "two.sided")



## binary variable

smokers=c(rep("No",75),rep("yes",25))
table(smokers)

cancer=c(rep("No",70),rep("yes",5),rep("No",5),rep("yes",20))
table(cancer)

table(smokers,cancer)

## chi square test

chisq.test(table(smokers,cancer))


smokers=c(rep("No",100),rep("yes",50))

test=c(rep("A",20),rep("B",30),rep("C",50),rep("A",10),rep("B",20),rep("C",20))
table(test,smokers)

chisq.test(table(test,smokers))



a=c(24,27,31,26)
b=c(29,31,36,33,30)
c=c(29,27,34,26)

city=c(rep("A",4),rep("B",5),rep("C",4))
temp=c(a,b,c)
mean(a)
mean(b)
mean(c)
f=aov(temp ~ city) ## compute the temperature by city (it break by city)
summary(f)
aggregate(temp~city,FUN = mean)




## Practice of stats 
## 1.	Use titanic data 
library(titanic)

## 2. titanic_train is used in the dataset 
data("titanic_train") ## for loading the data from library
titanic=titanic_train

head(titanic_train)

## 3.	Compute the descriptive statistics on age variable 

summary(titanic$Age)

## 4. Compute descriptive statistice on Fare variable  

summary(titanic$Fare)


## 5.	Compute the measures of spread for age and Fare variable 


## Variance

var(titanic$Age) ## it won't give the result because it is having the NA values in the table 

#Solution 1
var(titanic$Age,na.rm = T) ## it removes the missing values and compute the result
var(titanic$Fare,na.rm = T) ## it removes the missing values and compute the result
# Solution 2
var(na.omit(titanic$Age)) ## it omits the missing values and compute the result 

## Standard deviation
# solution 1
sd(titanic$Age,na.rm = T)
sd(titanic$Fare,na.rm = T)

# solution 2
sd(na.omit(titanic$Age))

# IQR (First and Third intervel)
#solution 1
IQR(titanic$Age,na.rm = T) ## Q3-Q1
IQR(titanic$Fare,na.rm = T) ## Q3-Q1

#7. Select a random sample of 500 records from titanic_train
sample(nrow(titanic_train), 500) ## this results in random values only from the dataframe
titanic_train[sample(nrow(titanic_train), 500), ] # this is used to get the rows and column names, 
#the above function is equivalent to the following function where the rows are not repeated
titanic_train[sample(nrow(titanic_train), 500,replace = FALSE), ]
#to include the repeated rows under the random selction use the following
titanic_train[sample(nrow(titanic_train), 500,replace = TRUE), ]

#solution 2: using dplyr
sample_n(titanic_train, 500)

## 8.	 Compute the mean fare by PClass

aggregate(titanic$Fare,list(titanic$Pclass),mean)

## 9.	 Seperate the records of all the classes and compute the mean 

## solution 1
t1=mean(titanic[titanic$Pclass==1,"Fare"])
t2=mean(titanic[titanic$Pclass==2,"Fare"])
t3=mean(titanic[titanic$Pclass==3,"Fare"])

## solution 2

unique(titanic$Pclass)
for (i in unique(titanic$Pclass)) {
  mean(titanic[titanic$i,"Fare"])
}

##11. What is the propability of a person with age greater than 50 use pnorm 


## solution 1
1-pnorm(50,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))
## solution 2

pnorm(50,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T),lower.tail = F)

## 12. what is the propability of fiding a person between the age of 40 and 50?

val2=pnorm(50,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))

val1=pnorm(40,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))

val2-val1

## 13.	 what is 75th percentile age

# solution 1
qnorm(0.75,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))
# solution 2
quantile(titanic$Age , probs = .75,na.rm = T)


## 14.	 age of the 95% of the people ( lower(2.5%) and upper(97.5%))?
## solution 1
qnorm(c(0.025,0.975),mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))
## solution 2
qnorm(0.975,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))-qnorm(0.025,mean(titanic$Age,na.rm = T),sd(titanic$Age,na.rm = T))
## solution 3
quantile(titanic$Age,probs = c(0.025,0.975),na.rm = T)



## 15. Plot the probability density of age variable 

# solution 1

hist(titanic$Age,freq = F)

# solution 2
plot(density(titanic$Age,na.rm = T),main = "Age plot",xlab = "Age",ylab = "Density")


## 16. Compute Z values for Fare variable 
# solution 1
x= (titanic$Fare-mean(titanic$Fare))/sd(titanic$Fare)
View(x)

# Solution 2
x=scale(titanic$Fare)

round(mean(x),1)
sd(x)

## 17. Convert the Fare into standard normal values 

x=scale(titanic$Fare)

## 18.	 Is there a difference in mean age of Males anf Females on Titanic?
#Solution 1
aggregate(titanic$Age,list(titanic$Sex),mean,na.rm=T)
#solution 2
aggregate(Age~Sex,data = titanic,mean)
#solution 3
# H0: mens(age) = female(age)
# HA: mens(age) != females (age)

mens=na.omit(titanic$Age[titanic$Sex=="male"])
female=na.omit(titanic$Age[titanic$Sex=="female"])
t.test(x=mens,y=female,alternative = "two.sided")
## p=0.01181 which is <0.05
## conclusion reject null hypothesis and accept alternative hypothesi

## solution 4
t.test(titanic$Age~ titanic$Sex , alternative="two.sided")
## X value will be based on alpha batical order which means females is X and males is Y



## 20. Alternate hypothesis is Mean age of Men is greater than mean age of females 
# H0: Mean of men(age) <= mean of female (age)
# Ha: Mean of men(age) > mean of female (age)
#Solution 1
mens=na.omit(titanic$Age[titanic$Sex=="male"])
female=na.omit(titanic$Age[titanic$Sex=="female"])
t.test(x=mens,y=female,alternative = "greater")
## p=0.005907 which is <0.05
## conclusion reject null hypothesis

#Solution 2
# H0: Mean of female(age) >= mean of male (age)
# Ha: Mean of female(age) < mean of male (age)
t.test(titanic$Age~titanic$Sex, alternative="greater")
## p=0.005907 which is <0.05
## conclusion reject null hypothesis




## 21. What is the propability of survival?

x=table(titanic$Survived)
prop.table(x)

#22.  what is the propability of survial for Males?
x = titanic_train$Survived[titanic_train$Sex=='male']
prop.table(table(x))

#23.  what is the propability of survival of females?
x = titanic_train$Survived[titanic_train$Sex=='female']

prop.table(table(x))

#24.  what is the propability of survival for females in second class?
x = titanic_train$Survived[titanic_train$Sex=='female' & titanic_train$Pclass == 2]

prop.table(table(x))

#25.  what is the propability of survival for males in second class?
x = titanic_train$Survived[titanic_train$Sex=='male' & titanic_train$Pclass == 2]

prop.table(table(x))

##26.	 compute the odss of survival of Males 

# we need to identify the probalit for survival of males because odds and probability are same
## oddsRatio and probability both are different

x= titanic$Survived[titanic$Sex=='male']
maleSurvival=prop.table(table(x))[2]
maleSurvival

## 27.compute the odds of survival for females 
x= titanic$Survived[titanic$Sex=='female']
femaleSurvival=prop.table(table(x))[2]
femaleSurvival

## 28. Odds ratio of survival of males vs females ?

maleSurvival/femaleSurvival

## 29. Perfrom hypothesis testing on survival of Males vs Survival of females 

# H0: survival is independent on gender
# HA: survival is dependent on gender

table(titanic_train$Sex, titanic_train$Survived)
options(scipen = 999)
chisq.test(table(titanic_train$Sex, titanic_train$Survived))
hist(titanic_train$Age)

## p=0.0000000000002 which is < 0.05 
## conclusion reject null hypothesis and accept alternative hypothesis


churn=read.csv("Churn.csv")
credit=read.csv("credit.csv")

str(churn)


## univariant analysis

churn$Churn=as.factor(churn$Churn)

table(churn$Churn)
## univariant on discrete variable
barplot(table(churn$Churn)) ## actual counts
barplot(prop.table(table(churn$Churn))) ## proportions 
barplot(table(churn$Churn),col=c('red','green'),
        main = "Bar chart from churn",
        xlab = "Churn",
        ylab = "Frequency")
## univariant analysis on continous variabls
summary(churn$Day.Mins) 
## histogram
hist(churn$Day.Mins)
hist(churn$Day.Mins,breaks = 5) ## breaks are used for showing the number of bars or granularity 
hist(churn$Day.Mins,breaks = 50)
hist(churn$Day.Mins,breaks = 25)

hist(churn$Day.Mins,breaks = 5,col = c('red','green'),
     main="Histogram") 

## box plot
boxplot(churn$Day.Mins) ## mean and median line is at the same position 
## there are some outliers on the data


## two numaric variable
## scatter plot
plot(churn$Day.Mins,churn$Day.Calls) ## there is no relation if the day mins increased to the day calls

plot(churn$Day.Mins,churn$Day.Charge)
cor(churn$Day.Mins,churn$Day.Charge) ## strong positive co relation which exist between day mins and day charges

## Pie chart 

a=pie(table(churn$Churn),col = c('red','blue'))

## saving the chart
ggsave(a,"piechart.jpg")

boxplot(churn$Day.Mins,churn$Day.Calls)
boxplot(churn$Day.Mins~churn$Churn) ## slicing the data for the prople who are churnd vs people who are not churned


## two Disc. Variables


barplot(table(churn$Churn,churn$VMail.Plan),
        col=c("red","blue"))

## GGPlot2

install.packages('ggplot2')
library(ggplot2)


data(mpg) ## mpg data is available in ggplot library
head(mpg)


ggplot(data=mpg,aes(cty))+
  geom_histogram(bins =10 )

ggplot(data=mpg,aes(manufacturer))+
  geom_bar( )

ggplot(data=mpg,aes(x="Highway",y=hwy))+
  geom_boxplot()


##1. Histogram


### Two dimesional
# 1. two cont.variables
ggplot(mpg,aes(city,hwg))+geom_point()

# 2. one cont and one discrete variable
ggplot(mpg,aes(drv,hwy))+geom_boxplot()
ggplot(mpg,aes(class,hwy))+geom_boxplot()
ggplot(mpg,aes(fl,fill=drv))+geom_bar() ##stacked bar chart


ggplot(mpg,aes(fl,fill=drv))+geom_bar(position = 'fill') ##stacked bar chart with proportions
ggplot(mpg,aes(fl,fill=drv))+geom_bar(position = 'dodge') ##grouped bar chart

a=ggplot(mpg,aes(cty,hwy,col=drv))+
  geom_point()+
  coord_cartesian(xlim = c(15,25),ylim = c(15,30))+## we can look into that particular region 
  ggtitle("City mileage vs highway ") +
  xlab("City mileage")+ylab('Highwat mileage')+
  theme_bw()+   ## adding default theme to the graph (theme_gray(),theme_bw())
  scale_x_continuous(breaks = seq(15,25,0.5))+ ## adding more x axis point 
  scale_y_continuous(breaks = seq(15,30,0.5))+  ## adding more y axis points
  theme(axis.text.x = element_text(angle = 45,vjust = 0.5,hjust = 1,size=20),
        axis.text.y = element_text(angle = 0,vjust = 0.5,hjust = 1,size=20))
  
  
x= a+ggtitle("City mileage vs highway ") ## assigned graph to a variable and added some additional layers to it
x+xlab("City mileage")+ylab('Highwat mileage')


ggplot(mpg,aes(class))+
  geom_bar()+
  geom_text(aes(label=..count..),stat = 'count')


ggplot(mpg,aes(class))+
  geom_bar()+
  geom_label(aes(label=..count..),stat = 'count')



ggplot(mpg,aes(class,fill=drv))+
  geom_bar()+
  geom_label(aes(label=..count..),stat = 'count',position = 'stack')

## the above can also be done by

tab=table(mpg$class,mpg$drv)
tab=as.data.frame(tab)
tab
ggplot(tab,aes(x=Var1,y=Freq))+
  geom_bar(stat = 'identity')

ggplot(tab,aes(x=Var1,y=Freq))+
  geom_bar()



## Credit data set

ggplot(credit,aes(months_loan_duration,amount))+geom_point()

## the below scatter plot may not give a good visual look
ggplot(credit, aes(months_loan_duration, amount)) + geom_point()

##hence we use jitter instead of the point which adds small noise
ggplot(credit, aes(months_loan_duration, amount)) + geom_jitter()
##we can add colors to get a good visual look
ggplot(credit, aes(months_loan_duration, amount, color=default)) + geom_jitter()


## consider the below chart
ggplot(credit, aes(default, amount)) + geom_boxplot()
##in the above chart, we cant infer much as the average of defaulter and non defaulters are almost same. We can have t-test to prove the difference between them


ggplot(data=credit, aes(purpose))+geom_bar()

##no of defaulters w.r.t purpose ##add the defaulters column(default in our credit csv) via fill
ggplot(data=credit, aes(purpose, fill=default))+geom_bar()

##the above compares via volume, and it is hard to compare
##plot using the proportions to get better understanding of the comparison( use position :fill)
ggplot(data=credit, aes(purpose, fill=default))+geom_bar(position = 'fill')

##add another facet job, to add job for the above defaulters comparison list
ggplot(data=credit, aes(purpose, fill=default))+geom_bar(position = 'fill')+facet_grid( ~job)





##EDA analysis on credit.csv file

str(credit)

## for checking balance it is a descreet variable we are using bar chart
ggplot(credit,aes(checking_balance))+
  geom_bar()
## for months loan duration as it is a continues variable we are using histogram
ggplot(credit,aes(months_loan_duration))+
  geom_histogram(bins =20)+
  scale_x_continuous(breaks = seq(0,72,6), labels = seq(0,72,6))

str(credit)

## for credit hostory column
ggplot(credit,aes(credit_history))+
  geom_bar()

## for purpose column
ggplot(credit,aes(purpose))+
  geom_bar()

## in the data set cars0 is something which is miss places we are replacing car0 with car
credit$purpose[credit$purpose=="car0"]="car"

## bar chart for amount
ggplot(credit,aes(1,amount))+
  geom_boxplot()
## saving balance
ggplot(credit,aes(savings_balance))+
  geom_bar()

## employment_duration
ggplot(credit,aes(employment_duration))+
  geom_bar()

## percent_of_income
ggplot(credit,aes(percent_of_income))+
  geom_bar()

credit$percent_of_income=as.factor(credit$percent_of_income)



## years_at_residence
summary(credit$years_at_residence)
credit$years_at_residence=as.factor(credit$years_at_residence)
ggplot(credit,aes(years_at_residence))+
  geom_bar()

## age
summary(credit$age)
ggplot(credit,aes(age))+
  geom_histogram()

## other_credit 
ggplot(credit,aes(other_credit))+
  geom_bar()

## housing 
ggplot(credit,aes(housing))+
  geom_bar()


## existing_loans_count 
credit$existing_loans_count=as.factor(credit$existing_loans_count)

ggplot(credit,aes(existing_loans_count))+
  geom_bar()

## job 
ggplot(credit,aes(job))+
  geom_bar()

## dependents
credit$dependents=as.factor(credit$dependents)

ggplot(credit,aes(dependents))+
  geom_bar()

## phone
ggplot(credit,aes(phone))+
  geom_bar()

## default 
ggplot(credit,aes(default))+
  geom_bar()


######## multi variable analysis ##############

ggplot(credit,aes(checking_balance,fill=default))+
  geom_bar(position='fill')+ggtitle("Checking balance VS default")


ggplot(credit,aes(default,months_loan_duration))+
  geom_boxplot()+ggtitle("Months loan duration VS default")


ggplot(credit,aes(credit_history,fill=default))+
  geom_bar()+ggtitle("Credit history VS default")

ggplot(credit,aes(purpose,fill=default))+
  geom_bar()+ggtitle("Purpose VS default")

ggplot(credit,aes(default,amount))+
  geom_boxplot()+ggtitle("amount VS default")

ggplot(credit,aes(savings_balance,fill=default))+
  geom_bar()+ggtitle("Savings Balance VS default")

ggplot(credit,aes(employment_duration,fill=default))+
  geom_bar()+ggtitle("Employment duration VS default")

ggplot(credit,aes(percent_of_income,fill=default))+
  geom_bar()+ggtitle("Perccent of income VS default")

ggplot(credit,aes(years_at_residence,fill=default))+
  geom_bar()+ggtitle("Years at residence VS default")

ggplot(credit,aes(default,age))+
  geom_boxplot()+ggtitle("age VS default")


ggplot(credit,aes(other_credit,fill=default))+
  geom_bar()+ggtitle("Other Credits VS default")

ggplot(credit,aes(job,fill=default))+
  geom_bar()+ggtitle("job VS default")

ggplot(credit,aes(dependents,fill=default))+
  geom_bar()+ggtitle("dependents VS default")

ggplot(credit,aes(phone,fill=default))+
  geom_bar()+ggtitle("phone VS default")


## multi dimentional plots

ggplot(credit,aes(amount,months_loan_duration,col=default))+
  geom_jitter()+facet_grid(.~checking_balance)+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(credit,aes(amount,months_loan_duration,col=default,shape=purpose))+
  geom_point(position='fill')+ geom_jitter()+facet_grid(.~credit_history)+
  theme(axis.text.x = element_text(angle = 50,hjust = 1))

ggplot(credit,aes(purpose,amount))+
  geom_bar(stat = 'identity')+
  geom_text(aes(label=amount),position = 'stack',check_overlap=T)

ggplot(credit,aes(purpose,amount))+
  geom_boxplot()


table(credit$purpose)

ggplot(credit,aes(percent_of_income,fill=amount))+
  geom_bar()
ggplot(credit,aes(percent_of_income,y=amount))+
  geom_bar(stat = 'identity')

ggplot(tab,aes(Var1,fill=Freq))+
  geom_bar()

## 12/11/2018
### Data pre processing
## Garbage in and garbage out


## scalling ##
hist(credit$amount)
## min max scalling 
fnScaling=function(x){
  return((x-min(x))/(max(x)-min(x)))
}

summary(credit$amount)
credit$amount=fnScaling(credit$amount)
hist(credit$amount,main = "With Z score scalling")  ## distribution will not change after scalling 


## z-scores
zScaling=function(x){
  return((x-mean(x))/sd(x))
}
summary(credit$amount)
credit$amount=zScaling(credit$amount)



## cat to Numeric
## one hot encoding 
credit$purpose
credit2=credit[,c('amount','purpose')]
install.packages('dummies')
library(dummies)
credit_dummies=dummy.data.frame(credit2)

## we can drop one colume while doing onehot encoding because by looking at k-1 columns we can identify the remainngin column

credit_dummies=credit_dummies[,-c(2)]

###ordinal encoding
credit3 = credit[,c('amount','purpose','employment_duration')]
View(credit3)
table(credit3$employment_duration)

credit3$employment_duration_ordinal = 
  ifelse(credit3$employment_duration == 'unemployed',0,
         ifelse(credit3$employment_duration=='< 1 year',1,
                ifelse(credit3$employment_duration=='1 - 4 years',2,
                       ifelse(credit3$employment_duration=='4 - 7 years',3,4
                       ))))

colnames(credit)

ggplot(credit, aes(purpose, amount)) + 
  geom_point()




## Pre capstone project
getwd()
setwd("E:/Data science/WorkSpace")
Churn_MV=read.csv("Churn_MV.csv")
###data transformation
str(Churn_MV)
Churn_MV$Area.Code=as.factor(Churn_MV$Area.Code)
Churn_MV$Churn=as.factor(Churn_MV$Churn)
Churn_MV$Intl.Plan=as.factor(Churn_MV$Intl.Plan)
Churn_MV$VMail.Plan=as.factor(Churn_MV$VMail.Plan)
summary(Churn_MV)
### Null imputation

##solution1
Churn_test=Churn_MV
Churn_test=Churn_test[(seq(0,nrow(Churn_test),2)),]
summary(Churn_test)


##solution2
Churn_sol2=Churn_MV
Churn_sol2=Churn_sol2[!(is.na(Churn_sol2$Churn)),]
edit(Churn_sol2)
summary(Churn_sol2)

###

x=mean(Churn_test$Day.Charge)
y=median(Churn_test$Day.Charge)
Churn_test$Day.Charge_mean=ifelse(is.na(Churn_test$Daily.Charges.MV),x,Churn_test$Daily.Charges.MV)
Churn_test$Day.Charge_median=ifelse(is.na(Churn_test$Daily.Charges.MV),y,Churn_test$Daily.Charges.MV)
View(Churn_test[,c("Daily.Charges.MV","Day.Charge_mean","Day.Charge_median")])

summary(Churn_test$mean_error)

## RMSE Mean
Churn_test$mean_error=Churn_test$Day.Charge-Churn_test$Day.Charge_mean
Churn_test$error_sq=Churn_test$mean_error**2
rmse_mean=sqrt(mean(Churn_test$error_sq))

## RMSE Median
Churn_test$median_error=Churn_test$Day.Charge-Churn_test$Day.Charge_median
Churn_test$error_sq_medi=Churn_test$median_error**2
rmse_median=sqrt(mean(Churn_test$error_sq_medi))


## Elimnationg out layers

## for column Day.Charge_mean
ggplot(data=Churn_test,aes(x="Highway",y=Day.Charge_mean))+
  geom_boxplot()
q3=quantile(Churn_test$Day.Charge_mean, 0.75)
q1=quantile(Churn_test$Day.Charge_mean, 0.25)

rangeDayMin= 1.5*IQR(Churn_test$Day.Charge_mean)
upperbound=q3+rangeDayMin
lowerBound=q1-rangeDayMin

Churn_test$Day.Charge_mean=ifelse((Churn_test$Day.Charge_mean>upperbound),upperbound,ifelse((Churn_test$Day.Charge_mean<lowerBound),lowerBound,Churn_test$Day.Charge_mean))


## for column Day.Charge
ggplot(data=Churn_test,aes(x="Highway",y=Day.Charge))+
  geom_boxplot()
q3=quantile(Churn_test$Day.Charge, 0.75)
q1=quantile(Churn_test$Day.Charge, 0.25)

rangeDayMin= 1.5*IQR(Churn_test$Day.Charge)
upperbound=q3+rangeDayMin
lowerBound=q1-rangeDayMin

Churn_test$Day.Charge=ifelse((Churn_test$Day.Charge>upperbound),upperbound,ifelse((Churn_test$Day.Charge<lowerBound),lowerBound,Churn_test$Day.Charge))



## Scalling 
## seperate the data frame into two frames one with numaric and one with categorical


## numaric data
nums<- unlist(lapply(Churn_test,is.numeric))
numaric_data=Churn_test[,nums]

## charector data
nums<- unlist(lapply(Churn_test,is.factor))
charecrot_data=Churn_test[,nums]

## z score
numaric_data=as.data.frame(scale(numaric_data[,-c(10)]))

zscore_bind=cbind(numaric_data,charecrot_data)
zscore_bind$Daily.Charges.MV=Churn_test$Daily.Charges.MV

## minmax scalling
minmaxvalue<- function(x)
{
  return((x-min(x))/(max(x)-min(x)))
}  
##minmax_data=ifelse(numaric_data!=numaric_data$Daily.Charges.MV,minmaxvalue(numaric_data),numaric_data)
minmax_data=as.data.frame(lapply(numaric_data[,-10], minmaxvalue))
minmax_data$Daily.Charges.MV=numaric_data$Daily.Charges.MV
rm(minmax_data)
minmax_bind=cbind(minmax_data,charecrot_data)

## co relation
correlation=cor(numaric_data)
## install package for drawing plots 
install.packages("corrplot")
library(corrplot)
corrplot(correlation,method ="number")

## correlation for categorical variable
table(charecrot_data)
chisq.test(table(minmax_bind$Intl.Plan,minmax_bind$VMail.Plan))

## correlation for continous and categorical variable
summary(aov(minmax_bind$Day.Mins~minmax_bind$VMail.Plan))
summary(aov(minmax_bind$CustServ.Calls~minmax_bind$Intl.Plan))

## remove the strongly correlated columns
zscore_bind$Day.Charge=NULL
zscore_bind$Eve.Charge=NULL
zscore_bind$Night.Charge=NULL
zscore_bind$Intl.Charge=NULL
zscore_bind$Phone=NULL
zscore_bind$Area.Code=NULL
zscore_bind$State=NULL


## removing NA values and separating the data set

churn_no_nas=zscore_bind[!(is.na(zscore_bind$Daily.Charges.MV)),]
summary(churn_no_nas)


## train and test data
set.seed(675)

ids = sample( nrow(churn_no_nas), nrow(churn_no_nas)*0.8)

train = churn_no_nas[ids,]
test = churn_no_nas[-ids,]

## model

lin_model=lm(Daily.Charges.MV~.,data = churn_no_nas)
summary(lin_model)

## Test the model 

test$predzsc = predict(lin_model, newdata=test )

summary(lin_model)

### RMSE 

test$error = test$Daily.Charges.MV - test$predzsc

test$error_sq = test$error ** 2

rmse = sqrt(mean(test$error_sq))
rmse

## stratified sample
install.packages("caTools")
library(caTools)


## EDA for the correlated values

boxplot(minmax_bind$Day.Charge,zscore_bind$Churn)

boxplot(minmax_bind$Day.Charge)

## Removing out layer for the corelated columns
outliersRemove<-function(x){
 
  q3=quantile(x, 0.75)
  q1=quantile(x, 0.25)
  
  range= 1.5*IQR(x)
  upperbound=q3+range
  lowerBound=q1-range
  
  x=ifelse((x>upperbound),upperbound,ifelse((x<lowerBound),lowerBound,x))
  return(x)
  
}
ggplot(data=minmax_bind,aes(x="1",y=Night.Charge))+
  geom_boxplot()
minmax_bind$Night.Charge=outliersRemove(minmax_bind$Night.Charge)

colnames(minmax_bind)

minmax_bind$Night.Mins=outliersRemove(minmax_bind$Night.Mins)
minmax_bind$Intl.Charge=outliersRemove(minmax_bind$Intl.Charge)
minmax_bind$Intl.Mins=outliersRemove(minmax_bind$Intl.Mins)
minmax_bind$Day.Mins=outliersRemove(minmax_bind$Day.Mins)
minmax_bind$Day.Charge=outliersRemove(minmax_bind$Day.Charge)
minmax_bind$Eve.Charge=outliersRemove(minmax_bind$Eve.Charge)
minmax_bind$Eve.Mins=outliersRemove(minmax_bind$Eve.Mins)
drop=c("Day.Charge_mean","Day.Charge_median", "mean_error" ,"error_sq","median_error","error_sq_medi")
minmax_data=minmax_bind[,!(names(minmax_data)%in%drop)]
colnames(minmax_data)

## EDA on data for removing non dependent variables on target variable 

boxplot(minmax_bind$Churn,minmax_bind$Day.Charge)
boxplot(minmax_bind$Churn,minmax_bind$Day.Mins)
boxplot(minmax_bind$Churn,minmax_bind$Night.Charge)
boxplot(minmax_bind$Churn,minmax_bind$Night.Mins)

ggplot(data=minmax_bind,aes(x=Churn,y=Night.Mins))+geom_boxplot()


boxplot(minmax_bind$Night.Charge)

## remove churn, state,area code,phone, daily charges MV, night calls, night charges,day charges,eve charges,int charges












