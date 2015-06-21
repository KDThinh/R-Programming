#This script is for Q2 in Exploratory Data Course - 2nd project

#Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
#(fips == "24510") from 1999 to 2008? Use the base plotting system to make 
#a plot answering this question.

#Create a subset dataframe contains only data for fips == "24510" (Baltimore)
Baltimore_NEI <- subset(NEI,NEI$fips == "24510")

#Use tapply to calculate the total PM2.5 for each year in the subset dataframe
Q2 <- with(Baltimore_NEI,tapply(Emissions,year,sum))

#Making plot
png(file = "plot2.png", height = 480, width = 480)
barplot(Q2,
     xlab = "Year",
     ylab = "Total emission PM2.5 (Tons)",
     ylim = c(0,3500),
     main = "Total emission vs Year in Baltimore",
     lwd = 1,
     col = "black",
     )
dev.off()

