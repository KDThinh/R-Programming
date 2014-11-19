best <- function(state, outcome) {
      outcome<-read.csv("outcome-of-care-measures.csv", stringsAsFactors=FALSE)
      outcome[,11]=as.numeric(outcome[,11]) #heart attack
      outcome[,17]=as.numeric(outcome[,17]) #heart failure
      outcome[,23]=as.numeric(outcome[,23]) #Pneumonia
  