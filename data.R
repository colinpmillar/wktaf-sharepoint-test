## Preprocess data, write TAF data tables

## Before:
## After:

library(icesTAF)
library(tidyr)
library(dplyr)

mkdir("data")

# read in "raw" data that we downloaded from MSS
salmon <-
  read.taf(taf.data.path("salmon", "salmon.csv")) %>%
  tibble()

# process the data into a form that we want to use in our model
rec_data <-
  salmon %>%
  select(Year, Girnock.Smolts, Girnock.Parr) %>%
  rename(rec = Girnock.Smolts, ssb = Girnock.Parr)

# some filtering to remove certain years
rec_data <- rec_data[complete.cases(rec_data), ]

# write out for use later
write.taf(rec_data, dir = "data")
