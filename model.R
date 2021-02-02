## Run analysis, write model results

## Before:
## After:

library(icesTAF)

mkdir("model")

# read in prepared data
recdat <- read.taf("data/rec_data.csv")

# fit a ricker stock recruitment model
mod <- glm(rec ~ ssb + offset(log(ssb)), family = Gamma(log), data = recdat)

# save the full model in an R data object
save(mod, file = "model/mod.RData")
