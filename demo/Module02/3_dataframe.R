# create a data frame
df <- data.frame(a = 1:3, b = c("a", "b", "c"))

# peek into a data frame
str(df)

# dimensions, number of rows and columns
dim(df)
nrow(df)
ncol(df)

# access column(s) in a data frame
df$a
df[["a"]]
df[[1]]
df[, 1]
df[, c("a", "b")]
df[c("a", "b")]

# access row(s) in a data frame
df[1:2, ]

# assign values for the data frame
df$a <- 0
df[1:2, "a"] <- c(1, 2)
df$d <- c(4, 5, 6)

# append a row to a data frame
df_new <- data.frame(a = c(4, 5), b = c("d", "e"), d = c("x", "y"))
df_combined <- rbind(df, df_new)

df[nrow(df) + 1, ] <- list(a = 4, b = "k", d = "x")

# how to remove a column or row?
df$d <- NULL
df[, -c(1)]
df[-c(1, 2), ]
