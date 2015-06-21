#This script is for Q6 in Exploratory Data Course - 2nd project

#Compare emissions from motor vehicle sources in Baltimore City with emissions from 
#motor vehicle sources in Los Angeles County, California (fips == "06037"). 
#Which city has seen greater changes over time in motor vehicle emissions?

#To categorize the emission from vehicle related combustion, this script will look for
#the keyword "Mobile - On-Road" in EI.Sector column in SCC dataframe.

mod_SCC <- tbl_df(SCC)
Vehicle_df <- filter(mod_SCC, grepl("Mobile - On-Road",as.character(EI.Sector))) 

#Subset NEI data with SSC values according to Vehicle_df$SCC:
NEI_Veh <- subset(NEI, NEI$SCC %in% Vehicle_df$SCC)

#Subset NEI_Veh to Baltimore and Los Angeles County:
NEI_Veh_fil <-subset(NEI_Veh, NEI_Veh$fips %in% c("24510","06037"))
                     
#Convert NEI_Veh_fil to tbl_df() format:
NEI_Veh_fil <- tbl_df(NEI_Veh_fil)
NEI_Veh_fil <- group_by(NEI_Veh_fil,fips,year) #Grouped by cities and Years

#Create a summarized data frame which has the total emissions for each city in each year
Q6 <-summarise(NEI_Veh_fil,total_emission = sum(Emissions))

#Rename fips to actual name
Q6$fips[Q6$fips=="24510"] <-"Baltimore, MD"
Q6$fips[Q6$fips=="06037"] <-"Los Angeles, CA"

#Making plot
png("plot6.png",width=960,height=480)
g <-ggplot(Q6, aes(x=as.factor(year),y=total_emission))+
  geom_bar(stat="identity")+
  facet_grid(.~fips) +
  labs(title="Total emission from two cities according to years", 
       x="Total emission PM2.5",
       y="Year")
print(g)
dev.off()

