attach(women)
women
barplot(height)


library(vcd)
counts <- table(Arthritis$Improved)
counts

barplot(counts, main="Simple Bar Plot", xlab="Improvement", ylab="Frequency")
barplot(counts, main='Horizontal Bar Plot", xlab="Frequency', ylab="Improvement", horiz = TRUE)

plot(Arthritis$Improved)

barplot(counts, main="Stacked Bar Plot", col = c("red","yellow","green"), legend=rownames(counts))


par(mfrow=c(2,2))
slices <- c(10, 12,4,16,8)
lbls <- c("US","UK","AUSTRALIA","GERMANY","FRANCE")

pie(slices, labels = lbls, main="Simple Pie Chart")
pct <- round(slices/sum(slices)*100)
lbls2 <- paste(lbls, " ", pct, "%", sep=" ")
pie(slices, labels=lbls2, col=rainbow(length(lbls2)), main="Pie Chart with percentages")

library(plotrix)
pie3D(slices, labels=lbls, explode=0.1, main="3D pie chart")
mytable <- table(state.region)
lbls3 <- paste(names(mytable), "\n", mytable, sep=" ")
pie(mytable, labels = lbls3, main = "Pie Chart from a table\n (with sample sizes)")


par(mfrow=c(2,2))

hist(mtcars$mpg)


v1 = c(1,2,NA,NA,5)
is.na(v1)
mean(v1)
mean(v1, na.rm = T)

v1a = na.omit(v1)
sum(v1a)
?na.omit

anyNA(v1)
v1[is.na(v1)] = mean(v1, na.rm = T)
v1


library(VIM)
data(sleep, package='VIM')
head(sleep)
dim(sleep)
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]



is.na(sleep$Dream)
sum(is.na(sleep$Dream))
mean(is.na(sleep$Dream))
12/62
mean(!complete.cases(sleep))
sum(is.na(sleep))
mean(!complete.cases(sleep))
sum(complete.cases(sleep))
mean(complete.cases(sleep))
42/62
colSums(is.na(sleep))
rowSums(is.na(sleep))
is.na(sleep[1,])
head(sleep)


library(mice)
mice::md.pattern(sleep)


VIM::aggr(sleep, prop=F, numbers=T)

VIM::aggr(sleep, prop=T)
VIM::matrixplot(sleep)
VIM:marginmatrix(sleep)
#VIM::marginplot(sleep[c("Gest","Dream")], pcn=)
