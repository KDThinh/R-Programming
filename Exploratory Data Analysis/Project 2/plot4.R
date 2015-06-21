#This script is for Q4 in Exploratory Data Course - 2nd project

#Across the United States, how have emissions from coal combustion-related sources 
#changed from 1999-2008?

#This script requires dplyr and ggplot2 package

#To categorize the emission from coal related combustion, this script will look for
#the keyword "Coal" in Short.Names column in SCC dataframe.

mod_SCC <- tbl_df(SCC)
Coal_df <- filter(mod_SCC, grepl("Coal",as.character(Short.Name))) 

#Subset NEI by comparing its value with SCC values from Coal_df
NEI_Coal <- subset(NEI, NEI$SCC %in% Coal_df$SCC)

Tot_emission <- tapply(NEI_Coal$Emission, NEI_Coal$year,sum)

png(file = "plot4.png", height = 480, width = 480)
barplot(Tot_emission,
     yaxt="n",
     col = "black",
     lwd = 1,
     xlab = "Year",
     ylab = "Total PM2.5 (Tons)",
     ylim = c(0,700000),
     main = "Total emission by coal related combustion across the US")
axis(2, axTicks(2), format(axTicks(2), scientific = F))
dev.off()

