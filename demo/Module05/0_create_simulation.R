library("data.table")
setwd("~/Documents/teaching/HMS520/Autumn2025/HMS520-Autumn2025/")

# create training and testing split
data_dir <- "demo/Module05/data"
seed <- 123L
set.seed(seed)

dt_iris <- setDT(copy(iris))

n <- nrow(dt_iris)
n_test <- as.integer(0.1 * n)
i_test <- sample.int(n, size = n_test)
dt_iris[, test := 0]
dt_iris[i_test, test := 1]

fwrite(dt_iris, file.path(data_dir, "iris.csv"))
