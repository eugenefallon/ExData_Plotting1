## plot3.R
## R code to read in analytic data and produce a histogram to be saved as plot3.png
## Assumes the working directory is set and all necessary files are in the working directory

plot3 <- function(){
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
    ## Coerce Date column to date format
    mydata$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
    
    ## Create datetimes
    datetime <- paste(as.Date(mydata$Date), mydata$Time)
    mydata$Datetime <- as.POSIXct(datetime)
    
    ## Now I create my plot to the screen device
    ## This time first plot Sub_metering_1
    ## then plot lines for Sub_metering_2 & 3
    with(mydata, {
        plot(Sub_metering_1~Datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
        lines(Sub_metering_2~Datetime,col='Red')
        lines(Sub_metering_3~Datetime,col='Blue')
    })
    
    ## Create a legend
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    ## Copy the screen device to a png file
    dev.copy(device = png, filename = 'plot3.png', width = 480, height = 480)
    
    ## Close the device you just copied to
    dev.off()
    
    ## end of code
}
