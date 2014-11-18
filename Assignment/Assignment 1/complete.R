complete <-function(directory, id=1:332) {
  
    files<-list.files(directory,full.names=TRUE) #Create of character vector of 
                                                # file names.
    
         
    nobs<-vector(mode="numeric")    #Create an empty numeric vector to contain 
                                    # the nobs for for loop command.
    
        
    for (i in 1:length(id)) {
      
        table<-read.csv(files[id[i]]) #Read the .csv file with correct name
                                      #according to the specified ID
        
        sub_table<-table[complete.cases(table),]  #Subset data frame with removed 
                                                  #NA
                     
        nobs[i]<- nrow(sub_table)   #nrow function determines the number of 
                                    #observable value, the results is then assigned
                                    #to vector nobs at ith position.
                
    }
    
    result<-as.data.frame(cbind(id,nobs))   #cbind to combine the two vectors 
                                            #id and nobs in a column wise fashion
                                            #and is then coerced to data frame 
                                            #otherwise, a matrix will result.
    result
   
}