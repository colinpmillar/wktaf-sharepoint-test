#' test data
#'
#' @name salmon
#' @format csv
#' @tafOriginator ICES, WGMIXFISH
#' @tafYear 2020
#' @tafAccess Restricted
#' @tafSource script
#' @references \url{https://data.marine.gov.scot/dataset/girnock-and-baddoch-emigrant-numbers-year-emigration}

library(icesTAF)

salmon <- read.csv("https://data.marine.gov.scot/sites/default/files//Girnock_Baddoch_Emigrant_Numbers_by_Year_of_Emigration_2020.csv")

write.taf(salmon)
