

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
## Set's value of matrix
    set <- function(y) {
    x <<- y
    m <<- NULL
  }
## Get's value of matrix
      get <- function() x
## Set's value of inverse  
      setinverse <- function(inverse) m <<- inverse
## Get's value of inverse  
      getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of the special "matrix". 
## If the inverse has been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
  
   
