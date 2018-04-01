library(ISLR)
attach(Default)
str(Default)
summary(Default)
logit = glm(default ~ income + balance + student, family='binomial',data=Default)
?glm
summary(logit)



#Dummy variables
df = mtcars
summary(df)
df$cyl = factor(df$cyl)
df$am = factor(df$am)

M1 = lm(mpg ~ wt + cyl, data=df)
summary(M1)
summary(df$cyl)
data.frame(wt=c(2,3), cyl=factor(c(4,6)))
predict(M1, newdata = data.frame(wt=c(2,2), cyl=factor(c(4,6))))
summary(df)

#y4 = 33.99 + -3.2*wt + 0
#y6 = 33.99 + -3.2* wt + -4.2 * cyl6(=1)
#y8 = 33.99 + -3.2*wt + -6.07 * cyl8(=1)

head(df)





library(dplyr)

(ndata <- (slice(Default, seq(0,n(),500))))

?slice

ndata

table(Default$default,Default$student)
addmargins(prop.table(table(Default$default,Default$student)))
fitted.results <- predict(logit, newdata=ndata,type='response')
cbind(ndata,fitted.results)

ndata %>% mutate(predict = ifelse(fitted.results<0.5,0,1))
ndata %>% mutate(predict = ifelse(fitted.results<0.5,'no','yes'))
