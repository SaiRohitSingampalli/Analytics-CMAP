#Data Structures in R

#vectors----
(v1 = c('A','B','C'))
v1
(v2 = c(1,2,3))
class(v2)
(v3 = c(TRUE, FALSE, TRUE))
v3a = c(T,F,T)
v4 = 100:200
v5 = seq(1,10,2)
v4; v5
v4[c(1,3,4)]
v4
v4[-c(1,3,4)]
v4
v1[c(1,2)]
  
v4[v4 == 150]
v7 = c('A','C','D')
v1[v1 %in% v7]
v1['A']
v1[1]

(v8 = 1:5)
names(v8) = c('anish','shlok','jaimin','bhavya','nihali')
v8
v8['shlok']
v8[2]
v8[2:4]
str(v8)
str(v1)
class(v8)
class(v1)

df = data.frame(rollno=c(1,2,3), name=c('Rohit','Lalit','Hitesh'), course=c('MBA','BBA','MCA'), dept=c('Dept1','Dept2','Dept2'), marks=floor(runif(3,50,100)))
df
?runif
?data.frame
df = fix(df)
df
str(df)

class(df)
summary(df)

?ls
ls()

rm(list=ls()) #to clean up the environment
ls()
v4

(mylist1 = list(1, df, v4))
?matrix
(mymatrix = matrix(1:24,ncol=4))
(mymatrix = matrix(1:24,ncol=4, byrow=TRUE))
(mymatrix = matrix(1:24,ncol=4, byrow=FALSE))
mymatrix[2,]
mymatrix[2:4,]
mymatrix[2:4,3]
mymatrix[2:4,3:4]
mymatrix[2,1]
mymatrix
mymatrix[5,1]
mymatrix[5,3]


dimnames(mymatrix) = list(c('R1','R2','R3','R4','R5','R6'), c(paste('c',1:4,sep='')))
mymatrix
1:4
paste('C','D',sep='-')
paste('C',1:4,sep='')
dimnames(mymatrix) = list(c(paste('R',1:6,sep='_')), c(paste('c',1:4,sep='')))
mymatrix



(myarray = array(101:124, dim=c(4,3,2)))
(myarray = array(1:24, dim=c(4,3,2), dimnames = list(c('S1','S2','S3','S4'), c('Sub1','Sub2','Sub3'), c('Dept1','Dept2'))))

?array



df
df=fix(df)
df[3:4,1:2]
df

df$course
df$name
df$gender = c('M','F','M','M')
df
str(df)


df$gender = factor(df$gender)
str(df)
df$grades = c('A','B','A','C')

df
str(df)
df$grades = factor(df$grades, ordered=T)
df$grades
df$grades = factor(df$grades, ordered=T, levels=c('C','B','A'))
df$grades




table(df$course, df$dept)
mymatrix

apply(mymatrix, 1, sum)
apply(mymatrix, 2, sum)
#apply(mymatrix, 3, sum)
apply(mymatrix, 2, mean)
myarray
apply(myarray, 3, sum)
apply(myarray, 2, sum)
apply(myarray, 1, sum)
df
?apply

df
tapply(df$marks, df$course, sum)
tapply(df$marks, df$gender, mean)

?tapply
df$gender = NULL
df

df[df$dept == 'Dept1',]
df[df$marks >= 80,]
stack(df)
df
