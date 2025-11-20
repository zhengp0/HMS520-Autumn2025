# linear regression
# =================
setwd("~/Documents/teaching/HMS520/Autumn2025/HMS520-Autumn2025/")
source("demo/Module05/functions.R")

# load data ---------------------------------------------------------------
data_dir <- "demo/Module05/data"
dt_iris <- fread(file.path(data_dir, "iris.csv"))

# plot data ---------------------------------------------------------------
plot_data(dt_iris)

# build model -------------------------------------------------------------
# lm
model <- lm(Sepal.Width ~ Sepal.Length, data = dt_iris)
coef(model)
vcov(model)
summary(model)

dt_iris[, sepal_width_fit := predict(model, dt_iris)]

# plot fit ----------------------------------------------------------------
plot_fit(dt_iris)

# summarize fit -----------------------------------------------------------
performance <- get_performance(dt_iris)
