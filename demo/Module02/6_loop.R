# for loop
# loop over elements
vec <- c("a", "b", "c")
for (x in vec) {
  print(x)
}

# loop over indices
for (i in seq_along(vec)) {
  print(i)
  print(vec[i])
}

# sum all numbers under 20 and mod 3 == 0
sum_vec <- 0
for (i in 1:20) {
  if (i %% 3 == 0){
    sum_vec <- sum_vec + i
  }
}

vec <- 1:100
sum(vec[vec %% 3 == 0 & vec <= 20])

# while and repeat loop
sum_vec <- 0
i <- 1

while (i <= 20) {
  if (i %% 3 == 0) {
    sum_vec <- sum_vec + i
  }
  i <- i + 1
}

sum_vec <- 0
i <- 1
repeat {
  if (i %% 3 == 0) {
    sum_vec <- sum_vec + i
  }
  if (i >= 20) {
    break
  }
  i <- i + 1
}
