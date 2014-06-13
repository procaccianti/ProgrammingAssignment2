## This file represents the solution to the Programming Assignment 2.
## The makeCacheMatrix function creates a special "matrix" object able to
## cache its inverse. The cacheSolve function gets as argument a special matrix
## and exploits its caching capabilities.

## The makeCacheMatrix function returns a list of functions to set/get a matrix
## and to set/get its inverse.

makeCacheMatrix <- function(x = matrix()) 
{
  inv <- NULL
  set <- function(y) 
  {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) inv <<- inverse
  getInv <- function() inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## The cacheSolve function returns the inverse of a special matrix provided as argument.
## It first tries to retrieve the cached inverse, if any. Otherwise computes the inverse
## and stores it.

cacheSolve <- function(x, ...) 
{
  inv <- x$getInv()
  if(!is.null(inv)) 
  {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(c)
  x$setInv(inv)
  inv
}
