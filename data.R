## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)
library(tidyr)
library(dplyr)

mkdir("data")

salmon <-
  read.taf(taf.data.path("salmon", "salmon.csv")) %>%
  tibble()

rec_data <-
  salmon %>%
  select(Year, Girnock.Smolts, Girnock.Parr) %>%
  rename(rec = Girnock.Smolts, ssb = Girnock.Parr)

rec_data <- rec_data[complete.cases(rec_data), ]

write.taf(rec_data, dir = "data")
