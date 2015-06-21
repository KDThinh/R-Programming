data<-read.table(file="./household_power_consumption.txt", 
                        header = TRUE, sep=";", na.strings="?") #Read data

data$Date <- as.Date(data$Date, format="%d/%m/%Y")

data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Plot 1

png(filename="Plot1.png", width = 480, height = 480)
with(data, hist(Global_active_power, main="Global Active Power",
                  xlab="Global Active Power (kilowatts)",
                  ylab="Frequency",
                  col="Red"))
dev.off()

