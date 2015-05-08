## plot1.R
## R code to read in analytic data and produce a histogram to be saved as plot1.png
## Assumes the working directory is set and all necessary files are in the working directory

plot1 <- function(){
    ## Some variables
    datafilename <- "febanalytic.csv"
    
    ## First check if our analytic data is there
    ## We assume that if it does exist it is the proper format
    if(!file.exists(datafilename)){
        ## File is not there, create it
        source("processing.R")
        processdata()
    }
    ## Analytic data exists so read it in
    mydata <- read.csv("febanalytic.csv")
    ## Coerce our Date column to proper date values
    mydata$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
    
    ## Now I create my plot to the screen device
    hist(mydata$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
    
    ## Set the tick marks and labels per the requirements
    axis(side=2, at=c(0,200,400,600,800,1000,1200),labels=c(0,200,400,600,800,1000,1200))
    
    ## Copy the screen device to a png file
    dev.copy(device = png, filename = 'plot1.png', width = 480, height = 480)
    
    ## Close the device you just copied to
    dev.off()
    
    ## end of code
}
