## Extract results of interest, write TAF output tables

## Before:
## After:

library(icesTAF)

mkdir("output")

(load("model/mod.RData"))
recdat <- read.taf("data/rec_data.csv")

recdat$fit <- fitted(mod)
recdat$se.fit <- predict(mod, se.fit = TRUE)$se.fit


model_fit <- recdat
write.taf(model_fit, dir = "output")
