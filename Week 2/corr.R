corr<-function (directory, threshold=0) {

    files<-list.files(directory,full.names=TRUE)#Create of character vector of 
                                               # file names.
    
    run<-vector(mode="numeric")   #vector to return the results
    
##--for loop function to process each .cv files. In each process, NA values
##--are removed from the data,  the total number of observable cases is calculated
##--and is compared with the threshold in ifelse function. If the condition is
##--satisfied, cor is run and the value is added to vector run at [i] position, 
##--otherwise, a NA is added.
    
    for (i in 1:332) {
      
        table<-read.csv(files[i])
        
        sub_table<-table[complete.cases(table),]
        
        ifelse(nrow(sub_table)>=threshold,run[i]<-cor(sub_table$nitrate,
                                                      sub_table$sulfate),NA)
}
    
    complete.run<-run[complete.cases(run)] #Remove NA values from run vector

    round(complete.run,digits=4)

    complete.run  #Return the results
}