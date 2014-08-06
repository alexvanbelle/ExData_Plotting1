### This script enables to build 4 plots of different relationships and save it in plot4.png
### It expects that the data is already loaded using the function of plot1.R

png("plot4.png", width=480, height=480,  bg = "transparent")
par(mfrow = c(2, 2))

# top left
with(data, 
     plot(DateTime, Global_active_power, 
          type="line",
          xlab="", 
          ylab="Global Active Power (kilowatts)"))

# top right
with(data, 
     plot(DateTime, Voltage, 
          type="line",
          xlab="datetime", 
          ylab="Voltage"))

# bottom left
with(data, 
     plot(DateTime, Sub_metering_1, 
          type="l",
          xlab="", 
          ylab="Energy sub metering"),
     col = "black")
with(data, 
     lines(DateTime, Sub_metering_2, col = "red"))
with(data, 
     lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", bty = "n", lty = 1,
       col = c("black","red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# bottom right
with(data, 
     plot(DateTime, Global_reactive_power, 
          type="line",
          xlab="datetime", 
          ylab="Global_reactive_power"))

dev.off()