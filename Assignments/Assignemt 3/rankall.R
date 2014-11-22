rankall <- function(outcome, num = "best") {
  
##Process and simplify the data  
    data<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)   
    
##Process the outcome   
    if (!outcome %in% c("heart attack","heart failure","pneumonia")) 
        stop("invalid outcome")
    if (outcome=="heart attack") col.num<-11
    if (outcome=="heart failure") col.num<-17
    if (outcome=="pneumonia") col.num<-23

##Ranking the hospitals according to the state
    data[,col.num]<-suppressWarnings(as.numeric(data[,col.num]))     #Coerce to numeric
    sub.data<-subset(data[,c(2,7,col.num)])                          #Simplify data 
    sub.data<-subset(sub.data,!is.na(sub.data[,3]))                  #remove NA
    sorted.data<-sub.data[order(sub.data[,2],sub.data[,3],sub.data[,1]),]     #sort

##Assigning variable for data manipulation 
    num.state<-length(unique(sorted.data[,2]))        
    list.name<-split(sorted.data[,1],sorted.data[,2])
    name<-character()

## For and If loop listing hospital name    
    for (i in 1:num.state) {    #Examining each state
        if      (num=="best") name[i]<-list.name[[i]][1]
        else if (num=="worst") {
                      x<-length(list.name[[i]])
                      name[i]<-list.name[[i]][x] 
        }
        else if (num>length(list.name[[i]])) name[i]<-"<NA>"     
        else    name[i]<-list.name[[i]][num]         
    }
    result<-data.frame(hospital=name, state=unique(sorted.data[,2])) #Return result
}    
        
    
    
  