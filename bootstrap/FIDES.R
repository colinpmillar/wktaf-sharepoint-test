#' FIDES data
#'
#' @name FIDES
#' @format csv, xls, xlsx
#' @tafOriginator ICES, WGMIXFISH
#' @tafYear 2020
#' @tafAccess Restricted
#' @tafSource script

library(icesTAF)
taf.library(icesSharePoint)

# target folder:
# https://community.ices.dk/ExpertGroups/WGMIXFISH-ADVICE/_layouts/15/start.aspx#/2020%20Meeting%20Documents/Forms/AllItems.aspx?RootFolder=%2fExpertGroups%2fWGMIXFISH%2dADVICE%2f2020%20Meeting%20Documents%2f06%2e%20Data%2fFIDES

filenames <-
  spdir(
    "2020 Meeting Documents/06. Data/FIDES",
    "/ExpertGroups/WGMIXFISH-ADVICE",
    "https://community.ices.dk"
  )

for (filename in filenames) {
  spgetfile(
    file.path("2020 Meeting Documents/06. Data/FIDES", file),
    "/ExpertGroups/WGMIXFISH-ADVICE",
    "https://community.ices.dk",
    destdir = "."
  )
}
