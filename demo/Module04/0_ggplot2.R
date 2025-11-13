library("data.table")
library("ggplot2")

# scatter plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()

# bar plot
ggplot(iris, aes(x = Species)) +
  geom_bar()

ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_col()

# box plot
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot()

# line plot
mod <- lm(Sepal.Width ~ Sepal.Length, iris)
print(summary(mod))

dt_iris <- setDT(copy(iris))
dt_iris[, pred_sepal_width := predict(mod, iris)]

ggplot(dt_iris, aes(x = Sepal.Length)) +
  geom_point(aes(y = Sepal.Width, color = Species)) +
  geom_line(aes(y = pred_sepal_width))

# line with uncertainty
pred_with_uncertainty <- predict(mod, iris, interval = "confidence")
uncertainty <- pred_with_uncertainty[, c("lwr", "upr")]
colnames(uncertainty) <- c("pred_sepal_width_lwr", "pred_sepal_width_upr")
dt_iris <- cbind(dt_iris, uncertainty)

ggplot(dt_iris, aes(x = Sepal.Length)) +
  geom_point(aes(y = Sepal.Width, color = Species)) +
  geom_line(aes(y = pred_sepal_width)) +
  geom_ribbon(aes(ymin = pred_sepal_width_lwr, ymax = pred_sepal_width_upr), alpha = 0.5)
