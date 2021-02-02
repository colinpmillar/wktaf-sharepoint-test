## Run analysis, write model results

## Before:
## After:

library(icesTAF)

mkdir("model")

recdat <- read.taf("data/rec_data.csv")

mod <- glm(rec ~ ssb + offset(log(ssb)), family = Gamma(log), data = recdat)

save(mod, file = "model/mod.RData")
