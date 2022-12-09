#QUESTION 1
matr1.data <- c(7,9,12,2,4,13)
matr2.data <- c(1,7,12,19,2,8,13,20,3,9,14,21)
matr1 <- matrix(matr1.data, nrow=2, ncol=3, byrow=TRUE)
matr2 <- matrix(matr2.data, nrow=3, ncol=4, byrow=TRUE)
matr1
matr2
multmatr <- matr1%*%matr2
multmatr
#QUESTION 2
#part a
Q2Dat <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary = c(623.30, 515.20, 611.00, 729.00, 843.25)
)
Q2Dat
#part b
department = c("IT", "finance", "computer science", "HR", "accounting")
updated <- cbind(Q2Dat, department)
updated
#part c
updated[c(1,3,5),2:3]
#part d
x <-updated[c(1,4,5),2]
y <- updated[c(1,4,5),3]
barplot(y,names.arg=x, col = "blue", density = 50)
#part e
z <- c(max(updated$salary),min(updated$salary), median(updated$salary))
mylabel <- c("max salary", "min salary", "median salary")
color <- c("purple", "green", "red")
pie(z, label = mylabel, main = "Salary Pie Chart", col = color)
legend("bottomright", mylabel, fill=color)