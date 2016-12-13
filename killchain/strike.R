# load packages to read, write and manipulate data
library(readr)
library(dplyr)

# load data
ticom <- read_csv("ticom.csv")
strikes <- read_csv("strikes.csv")

# alter data types as needed
ticom$officeid <- as.factor(ticom$officeid)
ticom$date <- as.Date(ticom$date, format = "%m/%d/%y")
ticom$trans_id <- as.factor(ticom$trans_id)
ticom$con_type <- as.factor(ticom$con_type)
ticom$award <- as.numeric(ticom$award)
ticom$prodservcode <- as.factor(ticom$prodservcode)
ticom$prodcat <- as.factor(ticom$prodcat)
ticom$prodtype <- as.factor(ticom$prodtype)

# write new csv
write_csv(ticom, "ticom.csv", na="")



