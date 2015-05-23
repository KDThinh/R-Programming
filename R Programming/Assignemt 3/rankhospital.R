rankhospital <- function(state, outcome, num = "best") {
  
##Process and simplify the data  
    data<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)   
    
##Process the outcome   
    if (!state %in% data[,7])  stop ("invalid state") 
    if (!outcome %in% c("heart attack","heart failure","pneumonia")) 
        stop("invalid outcome")
    if (outcome=="heart attack") col.num<-11
    if (outcome=="heart failure") col.num<-17
    if (outcome=="pneumonia") col.num<-23

##Ranking the hospitals according to the state
    data[,col.num]<-suppressWarnings(as.numeric(data[,col.num]))
    sub.data<-subset(data[,c(2,7,col.num)])                       #Simplify data 
    find.state<-subset(sub.data,sub.data[,2]==state)              #select state
    find.state<-subset(find.state,!is.na(find.state[,3]))         #remove NA
    sorted.result<-find.state[order(find.state[,3],find.state[,1]),] #sort

##If condition to process the num variable
    total<-nrow(sorted.result)
    if (as.character(num)=="best") sorted.result[1,1]
    else if (as.character(num)=="worst") sorted.result[total,1]
    else sorted.result[num,1]
}    
        
    
    
  