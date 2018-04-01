library(olsrr)
model <- lm(mpg ~ disp + hp + wt + qsec, data= mtcars)
k <- ols_step_all_possible(model)
plot(k)
k
