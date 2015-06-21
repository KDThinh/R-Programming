data<-read.table(file="./household_power_consumption.txt", 
                        header = TRUE, sep=";", na.strings="?") #Read data

data$Date <- as.Date(data$Date, format="%d/%m/%Y")

data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Plot 2

Day <- paste(as.Date(data$Date), data$Time)
data$Day <- as.POSIXct(Day)

png("Plot2.png", width = 480, height =480)
with(data, plot(Day, Global_active_power,
                type="l",
                ylab="Global Active Power (kilowatts)",
                xlab=""))
dev.off()