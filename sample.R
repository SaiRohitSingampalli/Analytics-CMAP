(L1 = letters[1:26])
(L2 = LETTERS[1:26])
(M1 = month.abb[1:12])
(M2 = month.name[1:12])

sample(L1, 2)
sample(L1, 30)
sample(L1, 30, replace = T)

sample(M1)
sample(M1, 5)
set.seed(100)
sample(M1,5)
set.seed(100)
sample(M1,5)
sample(M1,5)

(grades=LETTERS[1:5])
(sgrades = sample(grades, 20, replace = T, prob = c(0.4,0.2,0.2,0.1,0.1)))
table(sgrades)
prop.table(table(sgrades))
(sgrades=sample(grades, 20, replace = T, prob = c(0.4, 0.2, 0.2,0.1,0.1)))
table(sgrades)
prop.table(table(sgrades))


sample(2, nrow(mtcars), replace=T, prob=c(0.8,0.2))

library(dplyr)
dim(mtcars)
sample_frac(mtcars, 0.2)
sample_n(mtcars, 5)
