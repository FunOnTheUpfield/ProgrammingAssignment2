## R Programming Assignment 2
# by FunOnTheUpfield

## Provinance
## This is based on code available from:
## https://github.com/rdpeng/ProgrammingAssignment2
## Additional information available in the README.md 


## The changes involve minor substitutions
## I have assuemed this is a search and replace exercise,
## with the "Mean" function replaced by "inverse" function
## I could find no test data to validate this code...

## This work makes the following subsitutions from the orignal code:
## Replace 'makeVector' with 'makeCacheMatrix';  ;'numeric' with 'matrix', 'm' with 'inv'

##  ---

## Overview
## This function creates the inverse of a matrix
## As this can be time consuming it also stores the value of the calcuation 
## so can be retrieved without recalculating it. 



## makeCacheMatrix - This function creates a special "matrix" object
## The object inlcudes space to store its inverse (when calculated).

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

## cacheSolve checks to see if the inverse has already been calculated
## If it hasn't, it does the inverse calculation
## If it has it returns the previously calculated value. 

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

## Validation Status
## This code is untested. 

