
#Multi Linear regression
mtcars
dim(mtcars)
names(mtcars)
head(mtcars)
?mtcars
(M1 = lm(mpg~disp+cyl+hp+drat+wt+qsec+carb,data=mtcars))
(M2 = lm(mpg~disp+cyl+wt,data=mtcars))
summary(M1)
summary(M2)
#anova(model1,model2) degree of freedom should be positive
anova(M2,M1)

(M3 = lm(mpg~cyl+wt, data=mtcars))
summary(M3)
anova(M3,M2)

# Akaike information criteria as less as possible
library(MASS)
(M4 = lm(mpg ~ disp + cyl +hp + drat + wt + qsec+carb, data=mtcars))
step = stepAIC(M4, direction='both')

?stepAIC
