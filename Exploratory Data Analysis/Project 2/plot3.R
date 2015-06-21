#This script is for Q3 in Exploratory Data Course - 2nd project

#This script requires dplyr and ggplot2 packages

#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad)
#variable, which of these four sources have seen decreases in emissions from 1999-2008 
#for Baltimore City? Which have seen increases in emissions from 1999-2008? 
#Use the ggplot2 plotting system to make a plot answer this question.

#Create a subset dataframe contains only data for fips == "24510" (Baltimore)
Baltimore_NEI <- subset(NEI,NEI$fips == "24510")

Baltimore<-tbl_df(Baltimore_NEI) #Convert to tbl_df for dplyr manipulation

#Grouped the dataset according to year and type:
grouped_Baltimore <- group_by(Baltimore,year,type) 

#summarise the grouped dataset according to total emission (PM2.5)
Q3<-summarise(grouped_Baltimore,Tot_emis = sum(Emissions))

#Create ggplot showing the total emission of each type versus year
png(file = "plot3.png", height = 480, width = 960)

print(
g<- ggplot(Q3,aes(factor(year),Tot_emis)) +
    geom_bar(stat="identity") + 
    facet_grid(.~type) + 
    ggtitle("Total Emission in PM2.5 of each type according to year in Baltimore") + 
    xlab("Year") +
    ylab("Total Emission PM2.5 (Tons)")
)

dev.off()