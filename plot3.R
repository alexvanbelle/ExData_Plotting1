### This script enables to build a plot of the relationship between subMetering variables and Global active power and save it in plot3.png
### It expects that the data is already loaded using the function of plot1.R

png("plot3.png", width=480, height=480,  bg = "transparent")
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
legend("topright", lty = 1,
    col = c("black","red", "blue"), 
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()