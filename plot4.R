png(filename = "C:/Users/646347/Documents/Documents/R/EDA/Week1/plot4.png"
    ,width = 480, height = 480
    ,units = "px")

par(mfrow= c(2,2))

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2,0))
##Active Power Plot
with(df2, plot(plottime, Global_active_power, type = "l", 
               ylab = "Global Active Power (kilowatts)"))

##Voltage Plot
with(df2, plot(plottime, Voltage, type = "l", 
               ylab = "Voltage"))

##Energy Submetering plots
plot(df2$plottime,df2$Sub_metering_1, type = "l", 
     ylab= "Energy sub Metering",
     xlab= "Day", 
     col= "black" )
lines(df2$plottime,df2$Sub_metering_2, col= "red" )
lines(df2$plottime,df2$Sub_metering_3, col= "blue" )

legend("topright", 
       'groups',
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = c(1,1,1),
       col = c('black','red','blue'),
       ncol = 1,
       bty ="n")

##Global Reactive Power Plot
with(df2, plot(plottime, Global_reactive_power, type = "l",
               ylab = "Voltage"))

dev.off()


