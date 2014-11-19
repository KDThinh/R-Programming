## This R script is to generate a square matrix according to the user's
## description and to calculate its inverse matrix. The value of the inversed  
## matrix is stored (or cached) in setinverse function, which will return the 
## its value if the inverse function of the same square matrix is called again 
## (without have to re-calculate). If a new square matrix is defined, the invserse
## function will calculate again and store in the setinverse function as the new
## value which supersedes the old inversed matrix.

## This function is to store a matrix from the user's input

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL       ##The value of inv is set to NULL when a makeCacheMatrix is called
    set<-function(y) {  ##This method is to set a new matrix to supersede the old one
          x<<-y   ##Assign the x matrix with the new y matrix and set inv to NULL
          inv<<-NULL
    }
    get<-function() {x} ##To return the x matrix
    setinv<-function(inverse) inv<<-inverse
    getinv<-function() inv
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv<-x$getinv()  
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data<-x$get()
    inv<-solve(data,...)
    x$setinv(inv)
    inv
  }
