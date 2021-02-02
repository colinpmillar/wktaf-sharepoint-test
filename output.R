## Extract results of interest, write TAF output tables

## Before:
## After:

library(icesTAF)

mkdir("output")

# load model and input data
(load("model/mod.RData"))
recdat <- read.taf("data/rec_data.csv")

# add fitted values and se to model
model_fit <- recdat
model_fit$fit <- fitted(mod)
model_fit$se.fit <- predict(mod, se.fit = TRUE)$se.fit

# save file with fitted values and and SE of fitted values
write.taf(model_fit, dir = "output")
