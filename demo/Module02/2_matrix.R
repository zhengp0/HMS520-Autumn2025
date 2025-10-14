# create a matrix
m1 <- matrix(1:9, ncol=3)

m1 <- 1:9
dim(m1) <- c(3, 3)

nrow(m1)
ncol(m1)
dim(m1)

# access elements in a matrix
# access a row
m1[1, ]

# access first and second row
m1[c(1, 2), ]

# access a column
m1[, 1]

# access 6th element
m1[6]

# access the entire matrix
# assign values
m1[] <- 1
m1 <- 1

# matrix vector multiplication
vec <- 1:3
y <- m1 %*% vec

