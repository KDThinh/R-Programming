#This script is for Q1 in Exploratory Data Course - 2nd project

#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot showing the total PM2.5 emission from all 
#sources for each of the years 1999, 2002, 2005, and 2008

#Using tapply to calculate the total emission for each year 

Tot_emis<-tapply(NEI$Emissions,NEI$year,sum)

#Creating plot Q1 vs Year
png(file = "plot1.png", height = 480, width = 480)
barplot(Tot_emis,
     yaxt="n",
     xlab = "Year",
     ylab = "Total emission PM2.5 (tons)",
     ylim = c(0,8000000),
     main = "Total emission vs Year",
     col = "black"
     )
axis(2, axTicks(2), format(axTicks(2), scientific = F))
dev.off()
