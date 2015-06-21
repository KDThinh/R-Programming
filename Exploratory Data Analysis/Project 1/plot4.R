data<-read.table(file="./household_power_consumption.txt", 
                        header = TRUE, sep=";", na.strings="?") #Read data

data$Date <- as.Date(data$Date, format="%d/%m/%Y")

data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

Day <- paste(as.Date(data$Date), data$Time)
data$Day <- as.POSIXct(Day)

## Plot 4
png("Plot4.png", width = 480, height = 480)
par(mfrow = c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

#top left
with(data, plot(Day, Global_active_power,
                type="l",
                ylab="Global Active Power (kilowatts)",
                xlab=""))
#top right
with(data, plot(Day, Voltage,xlab="datetime",type="l"))

#bottom left
with(data, {
  plot(Day,Sub_metering_1, type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  lines(Day, Sub_metering_2, col="red")
  lines(Day, Sub_metering_3, col="blue")
})
legend("topright", pch=1,col=c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#bottom right
with(data, plot(Day, Global_reactive_power,xlab="datetime",type="l"))
dev.off()
