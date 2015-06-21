#This script is for Q5 in Exploratory Data Course - 2nd project

#How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

#This script requires dplyr package

#To categorize the emission from vehicle related combustion, this script will look for
#the keyword "Mobile - On-Road" in EI.Sector column in SCC dataframe.

mod_SCC <- tbl_df(SCC)
Vehicle_df <- filter(mod_SCC, grepl("Mobile - On-Road",as.character(EI.Sector))) 

#Subset NEI data with SSC values according to Vehicle_df$SCC:
NEI_Veh <- subset(NEI, NEI$SCC %in% Vehicle_df$SCC)

#Subset NEI_Veh according to Baltimore City only (fips == "24510")
NEI_Veh_Bal <-subset(NEI_Veh, NEI_Veh$fips == "24510")

#Total emission from vehicle (using tapply) in each year:
Tot_emission <-tapply(NEI_Veh_Bal$Emission, NEI_Veh_Bal$year, sum)

#Making plot:
png(file = "plot5.png", height = 480, width = 480)
barplot(Tot_emission,
     col = "black",
     lwd = 1,
     xlab = "Year",
     ylab = "Total Emission PM2.5 (Tons)",
     ylim = c(0,400),
     main = "Total emission by motor vehicle in Baltimore")
dev.off()
