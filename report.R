## Prepare plots and tables for report

## Before:
## After:

library(icesTAF)
library(ggplot2)

mkdir("report")

(load("model/mod.RData"))
fits <- read.taf("output/model_fit.csv")

p <-
  ggplot(fits, aes(ssb, rec)) +
  geom_point() +
  geom_line(aes(ssb, fit))

ggsave("fit.png", path = "report")
