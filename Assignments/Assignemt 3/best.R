best <- function(state, outcome) {
  
    data<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)
    data[,11]<-suppressWarnings(as.numeric(data[,11])) #heart attack
    data[,17]<-suppressWarnings(as.numeric(data[,17])) #heart failure
    data[,23]<-suppressWarnings(as.numeric(data[,23])) #pneumonia
    
       
    if (!state %in% data[,7]) 
        stop ("invalid state")
    if (!outcome %in% c("heart attack","heart failure","pneumonia")) 
        stop("invalid outcome")
    if (outcome=="heart attack") col.num<-11
    if (outcome=="heart failure") col.num<-17
    if (outcome=="pneumonia") col.num<-23
    
    find.state<-subset(data,data[,7]==state)
    result<-subset(find.state,
                   find.state[,col.num]==min(find.state[,col.num],na.rm=T))
    sorted.result<-result[order(result[,2],decreasing=T),]
    sorted.result[1,2]
}    
        
    
    
  