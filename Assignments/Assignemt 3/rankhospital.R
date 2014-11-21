rankhospital <- function(state, outcome, num = "best") {
  
##Process and simplify the data  
    data<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)   
    sub.data<-data[,c(2,7,11,17,23)]  #2 is hospital name
                                      #7 is state
                                      #11,17,23 are heart attack, heart failure
                                      #and pneumonia respectively

##Process the outcome   
    if (!state %in% sub.data[,2])  stop ("invalid state") 
    if (!outcome %in% c("heart attack","heart failure","pneumonia")) 
        stop("invalid outcome")
    if (outcome=="heart attack") col.num<-3
    if (outcome=="heart failure") col.num<-4
    if (outcome=="pneumonia") col.num<-5

##Ranking the hospitals according to the state
    sub.data[,col.num]<-suppressWarnings(as.numeric(sub.data[,col.num]))
    find.state<-subset(sub.data,sub.data[,2]==state)
    find.state<-subset(find.state,!is.na(find.state[,col.num]))
    sorted.result<-find.state[order(find.state[,col.num],find.state[,1]),]

##If condition to process the num variable
    total<-nrow(sorted.result)
    if (as.character(num)=="best") sorted.result[1,1]
    else if (as.character(num)=="worst") sorted.result[total,1]
    else sorted.result[num,1]
}    
        
    
    
  