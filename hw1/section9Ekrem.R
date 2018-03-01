#section 9 Matrices

m <- matrix(nrow = 2, ncol = 3)
m

attributes(m) #dim

dim(m)


m <- matrix(1:6, nrow = 2, ncol = 3)
m


m <- 1:10
m

dim(m) <- c(2, 5) #assing dimension -> convert list to matrix
m

x <- 1:3
y <- 10:12

cbind(x, y)

rbind(x, y)