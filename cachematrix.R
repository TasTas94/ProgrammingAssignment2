## Put comments here that give an overall description of what your
## functions do

## We will cache the inverse of a created object called "matrix".

makeCacheMatrix <- function(x = matrix()) {t <- NULL
  set <- function(y) {
    x <<- y    
    t <<- NULL 
  }
  rs <- function() x
  
  Inv1 <- function(inverse) 
    t <<- inverse
  
  Inv2 <- function() 
    t
  list(set = set, get = get,
       Inv1 = Inv1,
       Inv2 = Inv2)

}


## This function should retrieve the inverse from the cache obtained from the makeCacheMatrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
t <- x$Inver1() 
  if(!is.null(t)) { 
    message("We will get data that is cached")
    return(t)
  }
  values <- x$get()  
  t <- solve(values) 
  x$Inver2(m)  
  t      
        
}
