# linear group regression
# =======================
setwd("~/Documents/teaching/HMS520/Autumn2025/HMS520-Autumn2025/")
source("demo/Module05/functions.R")

# load data ---------------------------------------------------------------
data_dir <- "demo/Module05/data"
dt_iris <- fread(file.path(data_dir, "iris.csv"))

# plot data ---------------------------------------------------------------
plot_data(dt_iris)

# build model -------------------------------------------------------------
# lm with group

dt_group <- split(dt_iris, dt_iris$Species)

models <- lapply(dt_group, function(dt) lm(Sepal.Width ~ Sepal.Length, data = dt))

for (key in names(dt_group)) {
  dt_group[[key]][, sepal_width_fit := predict(models[[key]], dt_group[[key]])]
}

dt_iris <- rbindlist(dt_group)

# plot fit ----------------------------------------------------------------
plot_fit_group(dt_iris, nrow = 3)

# summarize fit -----------------------------------------------------------
performance <- get_performance(dt_iris)
