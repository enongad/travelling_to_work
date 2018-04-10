setwd("/Users/fabiand/Documents/GitHub/smartrider")

raw = read.csv("data/from2017.csv")

### remove top ups
raw = raw[raw$Notes != "Autoload Topup",]
### keep only trains
raw = raw[raw$Service == "Rail",]

### make time correct time stamp variable
raw$Date.Time = as.character(raw$Date.Time)
raw$time = substr(raw$Date.Time,nchar(raw$Date.Time)-8,nchar(raw$Date.Time))
raw$date = as.Date(raw$Date.Time,"%d/%m/%Y")



### saving
