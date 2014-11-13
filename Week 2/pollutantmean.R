polutantmean<-function(directory,polutant,id=1:332) { #contents of the function
  pol_data<-list.files("directory",full.names=TRUE) #make a vector of character 
                                                    #contains the full file names
  pol_frame<-data.frame()           #Create empty data frame for for looping
  for (i in id) {
    pol_frame<-rbind(pol_frame,read.csv(pol_data[i])) #Combine data from different
                                                      #files into one data frame
  }
  mean(pol_frame$polutant,rm.na=TRUE)

}
