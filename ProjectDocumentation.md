## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. 

## Description of files in this repo

### Data files
The raw data was obtained here: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> 

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

The raw data file is very large and as such cannot be added to this repo.  To overcome this, the raw data was processed to create a much smaller file of analytic data.  Effectively, this is a subset of the raw data extracting out rows of data with a date of February 1 or 2, 2007.  This data file which was used for producing all plots is included in the repo and named <b>"febanalytic.csv"</b>.  As the file extension implies, this is a file of comma separated values.

### R code files
<ul>
<li><b>processing.R</b> - Used to process the raw data and create "febanalytic.csv"</li>
<li><b>plot1.R</b> - Creates the first of four plots to be created "plot1.png"</li>
<li><b>plot2.R</b> - Creates the first of four plots to be created "plot2.png"</li>
<li><b>plot3.R</b> - Creates the first of four plots to be created "plot3.png"</li>
<li><b>plot4.R</b> - Creates the first of four plots to be created "plot4.png"</li>
</ul>

### Plots
As stated above, there were four plots created by the included R code files.  Each R code file created a png file with the same name as the R file.  Those files are:
<ul>
<li><b>plot1.png</b></li>
<li><b>plot2.png</b></li>
<li><b>plot3.png</b></li>
<li><b>plot4.png</b></li>
</ul>

