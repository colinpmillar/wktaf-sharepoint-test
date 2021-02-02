## Prepare plots and tables for report

## Before:
## After:

library(icesTAF)
library(ggplot2)

mkdir("report")

# load model and fitted values
(load("model/mod.RData"))
fits <- read.taf("output/model_fit.csv")

# create a plot of model fit and save
ggplot(fits, aes(ssb, rec)) +
  geom_point() +
  geom_line(aes(ssb, fit)) +
  ggtitle("Ricker fit to Girnock Smolts and Parr")

ggsave("fit.png", path = "report", width = 12, height = 10)
