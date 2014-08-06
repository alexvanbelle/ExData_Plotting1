### This script enables to build a plot of the relationship between datetime and Global active power and save it in plot2.png
### It expects that the data is already loaded using the function of plot1.R


# if your R locale is not English, the days on the xaxis will not be in English
# to get exactly the same output as the example provided in the assignment
# you can uncomment the line below
#Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")

png("plot2.png", width=480, height=480,  bg = "transparent")
with(data, 
     plot(DateTime, Global_active_power, 
          type="line",
          xlab="", 
          ylab="Global Active Power (kilowatts)"))
dev.off()