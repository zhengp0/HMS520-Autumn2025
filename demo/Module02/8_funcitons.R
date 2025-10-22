# call a function
a <- "bakka"
substring(a, first = 1, last = 3)
args <- list(a, first = 1, last = 3)
do.call(substring, args)

# define a function
add_2 <- function(x) {
  x + 2
}
add_2(3)

# improve function call
add_2 <- function(x) {
  if (!is.numeric(x)) {
    stop("x is not a numeric value, cannot add 2")
  }
  x + 2
}

# missing values
plot_x_y <- function(x, y) {
  if (missing(x) & (!missing(y))) {
    x <- seq_along(y)
  }
  if (missing(y)) {
    y <- x
    x <- seq_along(y)
  }
  plot(x, y)
}

# ellipses, ...
to_list <- function(a = 1, b = 2, ...) {
  print(paste0("a = ", a))
  print(paste0("b = ", b))
  list(...)
}

# file_path
# combine all the arguments together
file_path <- function(..., fsep = .Platform$file.sep) {
  path <- paste(..., sep = fsep)
  path
}
