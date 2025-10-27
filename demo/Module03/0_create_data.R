# create dataset that will be used in the demo
# ============================================

# set random seed
set.seed(0L)
data_dir <- "demo/Module03/data"

# create characteristics for the data
keys <- list(
  location_id = 1:5,
  age_group_id = 1:5,
  sex_id = 1:2
)

# create cartisian grid using the keys
# ?expand.grid
dat <- do.call(expand.grid, keys)

# simulate population and number of deaths
prob <- 0.1
population <- rpois(nrow(dat), 1000L)
death <- rbinom(nrow(dat), population, prob)

# create population and death data frames
df_population <- cbind(dat, population)
df_death <- cbind(dat, death)

# create work hours table
project <- 1:5

df_hours <- data.frame(
  project = project,
  A = rpois(length(project), 5),
  B = rpois(length(project), 5),
  C = rpois(length(project), 6),
  D = rpois(length(project), 10)
)

# create pay rate
df_pay <- data.frame(
  project = project,
  dollar_per_hour = rpois(length(project), 40)
)

# save the data frames
write_csv <- function(..., row.names = FALSE) {
  write.csv(..., row.names = row.names)
}

if (!dir.exists(data_dir)) {
  dir.create(data_dir)
}

write_csv(df_population, file.path(data_dir, "population.csv"))
write_csv(df_death, file.path(data_dir, "death.csv"))
write_csv(df_hours, file.path(data_dir, "hours.csv"))
write_csv(df_pay, file.path(data_dir, "pay.csv"))