library("data.table")
source("lib_dm_sequelae_split.R")
source("masked/get_demographics.R")

# input
## getting subset location_id, and age_group_id
demographics <- get_demographics(gbd_team="epi", gbd_round_id=7)
age_group_id <- unlist(demographics$age_group_id, use.names = FALSE)

arguments <- comandArgs(trailingOnly = TRUE)
location_id <- as.numeric(arguments[1])

# output
outdir <- "masked/gbd_2020_test_type2_age_15_plus/"

## get t1, t2 prevalence
dm_prev <- get_dm_prev(location_id = location_id, age_group_id = age_group_id)

## reshape and save t1 and t2 and save them

