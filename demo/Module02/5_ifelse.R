# if, if else, if else if else
vec <- 1:4
vec <- c(vec, rep(NA, 3))

if (any(is.na(vec))) {
  stop("There is na in your vector")
} else {
  print("Everything is ok")
}