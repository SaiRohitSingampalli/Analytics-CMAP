# Decision Tree
# Data
# Student : Gender - (Male & Female) play sports

(gender = c('Female','Female','Male','Male'))
(play = c('Not Play', 'Not Play', 'Play', 'Play'))
d = data.frame(gender,play)
d
rownames(d) = c(paste('s', 1:4, sep=""))
#rownames(d) = c('s1', 's2', 's3', 's4')
d                   

#### BY SIR
rollno = paste('S', 1:30, sep='')
rollno
set.seed(102)
gender = sample(x=c('Male','Female'), size=30, replace=T, prob=c(0.5,0.5))
gender
table(gender)
set.seed(102)
play = sample(x=c('Play','Not Play'), size=30, replace=T, prob=c(0.5,0.5))
#play = sample(x=c('Play','Not Play', size = 30, replace=T, prob=c(15/30,15/30)))
play
table(play)  # in no.s how many male and female
prop.table(table(play))  # creates percentage
students1 = data.frame(gender,play)
rownames(students1) = rollno
students1
table(students1)
# table(students1$gender)
prop.table(table(students1))

#Model1
library(rpart)
?rpart
fit1 = rpart(play~gender, data=students1)
fit1 = rpart(play~gender, data=students1, minsplit=4, minbucket=2)
fit1  # print(fit1)
library(rpart.plot)
rpart.plot(fit1, main='Classification Tree', nn=T)

predict(fit1, newdata = data.frame(gender='Female'))
predict(fit1, newdata = data.frame(gender=c('Male','Female','Male')))

set.seed(101)
x=runif(10,1,10)
x
mean(x)




set.seed(100)
gender = sample(x=c('Male','Female'), size=30, replace=T, prob=c(0.4,0.6))
table(gender)

set.seed(101)
married = sample(x=c('Married','Single'), size=30, replace=T, prob=c(0.3,0.7))
table(married)

set.seed(102)
play = sample(x=c('Play','NotPlay'), size=30, replace = T, prob = c(15/30,16/30))
table(play)
students2 = data.frame(gender, married, play)
rownames(students2)= rollno
head(students2)
str(students2)
prop.table(ftable(students2))



students2=read.csv("dt.csv")

fit2 = rpart(play ~ gender + married, data = students2, minsplit=5)
summary(fit2)
fit2
rpart.plot(fit2, type=2, extra = 104, tweak=1.2, under=T, shadow=c('brown','green','red'),nn=T)

testdata = data.frame(gender=c('Male','Male','Female','Female'), married=c('Married','Single','Married','Single'))
(p2 = predict(fit2, newdata = testdata, type='class'))
(p3 = predict(fit2, newdata = ))

fit2
prp(fit2)
prp(fit2, main="An Example", type=4, fallen=T, branch=.3, round=0, leaf.round = 9, clip.right.labs = F, under.cex = 1,)
