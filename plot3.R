setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") ) #set correct date format

wk1data <- read.table("C:/Users/646347/Documents/Documents/R/EDA/household_power_consumption.txt", 
                      sep = ";", 
                      header = TRUE,
                      na.strings = "?",
                      colClasses = c("myDate", "character","numeric" ,"numeric","numeric"
                                     ,"numeric","numeric","numeric","numeric")
) 
wk1data <- subset(wk1data,Date >= "2007-02-01" & Date <= "2007-02-02") ##Extract 2 day data

df1 <- wk1data

df2 <- within(df1, { timestamp=format(as.POSIXct(paste(df1$Date,df1$Time)),
                                      "%Y/%m/%d %H:%M:%S") })
df2$plottime <- as.POSIXlt(df2$timestamp)


png(filename = "C:/Users/646347/Documents/Documents/R/EDA/Week1/plot3.png"
    ,width = 480, height = 480
    ,units = "px")

par(mfrow=c(1,1))
plot(df2$plottime,df2$Sub_metering_1, type = "l", 
     ylab= "Energy sub Metering",
     xlab= "Day", 
     col= "black" )
lines(df2$plottime,df2$Sub_metering_2, col= "red" )
lines(df2$plottime,df2$Sub_metering_3, col= "blue" )

legend("topright", 
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = c(1,1,1),
       col = c('black','red','blue'),
       ##ncol = 3,
       bty ="n"
)
dev.off()








df2 <- within(df1, { timestamp=format((paste(df1$Date,df1$Time)), 
                                      "%Y/%m/%d %H:%M:%S") })


df2 <- within(df1, { timestamp=format(as.POSIXct(paste(Date, as.Date(Time, 
                                                                     "%H:%M:%S"))), "%d/%m/%Y %H:%M:%S") })

df2 <- within(df1, { timestamp=format((paste(df1$Date,df1$Time)), 
                                      "%m/%d/%Y %H:%M:%S") })
head(df2)
tail(df2)





wk1data$datetime <- strftime(paste(as.Date(wk1data$Date, format = "%d/%m/%Y"), 
                                   as.Date(wk1data$Time, format = "%H:%M:%S")), "%Y/%m/%d %H:%M:%S"
)







