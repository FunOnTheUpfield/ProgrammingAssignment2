## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## I have assuemed this is a search and replace exercise,
## with the "Mean" function replaced by "inverse" function
## I could find no test data to validate this code...

## This work makes the following subsitutions:
## Replace 'makeVector' with 'makeCacheMatrix';  ;'numeric' with 'matrix', 'm' with 'inv'
## Replace 'setMean' and 'getMean' with 'setInverse' and 'getInverse'


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
  ## Use example in question. Replace "numeric" with "matrix" and "mean" with "inverse"

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- inverse(data, ...)
  x$setinverse(inv)
  inv
}

## Similarly use example. Replace "m" with "inv",
