## processing.R
## This script processes a raw data file, producing analytic data
## based on filtering the raw data for certain dates in the "Date" column
## The analytic data will be used by plot1..4.R

processdata <- function() {
    
## Setup some variables
myfile <- "household_power_consumption.txt" ## assumes data is in the working directory
mycolclass <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
thedates <- c("1/2/2007","2/2/2007") ## Per the project assignment and the date format used in the raw data
outfile <- "febanalytic.csv" ## Assumes writing to working directory and will write out as comma separated

## Read in the raw data file
mydata <- read.table(myfile,header=TRUE,sep=";",na.strings="?",colClasses=mycolclass)

## We are going to use functionality from the data.table package so make sure it is loaded
library(data.table)

## Now convert our data frame to a data table
myDT <- data.table(mydata)

## Set the Date column as a key
setkey(myDT,Date)

## Now create our subset of data based on the requested dates
febDates<- myDT[thedates]

## Write out our table of subsetted data for analytics
write.table(febDates, file=outfile, sep=",", row.names=FALSE)

## processing complete, end of script.
}