# linear mixed effects model
# ==========================
setwd("~/Documents/teaching/HMS520/Autumn2025/HMS520-Autumn2025/")
source("demo/Module05/functions.R")
install.packages("lme4")
library("lme4")

# load data ---------------------------------------------------------------
data_dir <- "demo/Module05/data"
dt_iris <- fread(file.path(data_dir, "iris.csv"))

# plot data ---------------------------------------------------------------
plot_data(dt_iris)

# build model -------------------------------------------------------------
# lmer
model <- lmer(Sepal.Width ~ Sepal.Length + (Sepal.Length || Species), dt_iris)
coef(model)
vcov(model)
summary(model)

# plot fit ----------------------------------------------------------------

# summarize fit -----------------------------------------------------------
