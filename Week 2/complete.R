complete <-function(directory, id=1:332) {
  
    files<-list.files(directory,full.names=TRUE)
  
       
    nobs<-vector(mode="integer")
    
    id<-vector(mode="numeric")
  
    for (i in id) {
      
        table<-read.csv(files[i])
        
        sub_table<-subset(table, is.na(table$sulfate)==FALSE &&
                                is.na(table$nitrate==FALSE))
        
        row_num<-nrow(sub_table)
        
        nobs[i]<-row_num
        
        id[i]<-i
    }
    
    #complet<-data.frame(cbind(nobs,id))
    #colnames(complete)<-c("nobs","id")
    #complet
    nobs
  
}