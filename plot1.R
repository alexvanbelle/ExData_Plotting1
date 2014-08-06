### This script enables to:
###     * Read the data with function "readDataFromCsv" for the days "02/01/2007" and "02/02/2007"
###     * Build an histogram of the Global active power and save it in <wd>\plot1.png

# you should adapt this path to your system
# the data can be found here: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
filePath <- "J:\\cours\\exploratoryAnalysis\\ExData_Plotting1\\household_power_consumption.txt"


readDataFromCsv <- function(filePath){
    data <- read.csv(filePath, sep=";", na.strings = "?", colClasses = c(rep("character", 2), rep("numeric", 7)))
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02",]
    data$DateTime <- paste(data$Date, data$Time)
    
    # the doc doesn't specify the timeZone of time values, we assume it's UTC 
    data$DateTime <- strptime(data$DateTime, format = "%Y-%m-%d %H:%M:%S", tz="GMT")
        
    data
}

data <- readDataFromCsv(filePath)

png("plot1.png", width=480, height=480,  bg = "transparent")
hist(data$Global_active_power, 
     col = "red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()