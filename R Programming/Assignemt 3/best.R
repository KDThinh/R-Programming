best <- function(state, outcome) {
  
##Process and simplify the data  
    data<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)   
    sub.data<-data[,c(2,7,11,17,23)]  #2 is hospital name
                                      #7 is state
                                      #11,17,23 are heart attack, heart failure
                                      #and pneumonia respectively
##Testing the condition   
    if (!state %in% sub.data[,2])  stop ("invalid state") 
    if (!outcome %in% c("heart attack","heart failure","pneumonia")) 
        stop("invalid outcome")
    if (outcome=="heart attack") col.num<-3
    if (outcome=="heart failure") col.num<-4
    if (outcome=="pneumonia") col.num<-5
##Sort the data according to the state and find the best hospital
    sub.data[,col.num]<-suppressWarnings(as.numeric(sub.data[,col.num]))
    find.state<-subset(sub.data,sub.data[,2]==state)
    result<-subset(find.state,
                   find.state[,col.num]==min(find.state[,col.num],na.rm=T))
    sorted.result<-result[order(result[,1],decreasing=T),]
    sorted.result[1,1]
}    
        
    
    
  