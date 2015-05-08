## plot4.R
## R code to read in analytic data and produce 4 plots together to be saved as plot4.png
## Assumes the working directory is set and all necessary files are in the working directory

plot4 <- function(){
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
    
    ## Now I create my plots to the screen device
    ## First I setup my grid for 4 plots in a 2X2 table layout
    par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
    
    ## Now I actually chart data
      with(mydata, {
        ## Top left plot for Global active power
        plot(Global_active_power~Datetime, type="l", 
             ylab="Global Active Power", xlab="")
        
        ## Top right - Voltage
        plot(Voltage~Datetime, type="l", 
             ylab="Voltage", xlab="datetime")
        
        ## Bottom left - This time first plot Sub_metering_1
        plot(Sub_metering_1~Datetime, type="l",
             ylab="Energy sub metering", xlab="")
        ## then plot lines for Sub_metering_2 & 3
        lines(Sub_metering_2~Datetime,col='Red')
        lines(Sub_metering_3~Datetime,col='Blue')
        ## a legend for this current plot
        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        ## Bottom right - Global reactive power
        plot(Global_reactive_power~Datetime, type="l", 
             ylab="Global_reactive_power",xlab="datetime")
    })
        
    ## Copy the screen device to a png file
    dev.copy(device = png, filename = 'plot4.png', width = 480, height = 480)
    
    ## Close the device you just copied to
    dev.off()
    
    ## end of code
}
