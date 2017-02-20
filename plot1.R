setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") ) #set correct date format

wk1data <- read.table("C:/Users/646347/Documents/Documents/R/EDA/household_power_consumption.txt", 
                   sep = ";", 
                   header = TRUE,
                   na.strings = "?",
                   colClasses = c("myDate", "character","numeric" ,"numeric","numeric"
                                  ,"numeric","numeric","numeric","numeric")
                    ) 
wk1data <- subset(wk1data,Date >= "2007-02-01" & Date <= "2007-02-02") ##Extract 2 day data

png(filename = "C:/Users/646347/Documents/Documents/R/EDA/Week1/plot1.png"
    ,width = 480, height = 480
    ,units = "px")
hist(wk1data$Global_active_power,       ##Histogram
     main = "Global Active Power",  
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", 
     col = "red",
     ##breaks = ((0:max(wk1data$Global_active_power)+1)-0.5),
     ##ylim = c(0,4000),
     freq = TRUE
     )
dev.off()
