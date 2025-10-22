# apply
mat <- matrix(1:6, ncol = 3)

# row sum
apply(mat, MARGIN = 1, FUN = sum)

# col sum
apply(mat, MARGIN = 2, FUN = sum)

# sapply
john <- list(
  name = "John",
  phone_number = 1:3,
  email = "john@uw.edu",
  address = list(
    city = "seattle",
    state = "WA"
  )
)

result <- sapply(john, length)

# lapply
lapply(john, length)
df <- data.frame(a = 1:5, b = 6:10)
lapply(df, mean)
apply(df, MARGIN = 1, FUN = mean)

# mapply
distance <- function(x, y) {
  sqrt(x^2 + y^2)
}

x <- 1:100
y <- 1:100

mapply(distance, x, y)

distance(x, y)
