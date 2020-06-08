## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function takes in a matrix representing an invertible 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setmat <- function(y){
    x <<- y
    inv <<- NULL
  }
  getinv <- function() inv
  setinv <- function(val) inv <<- val 
  getmat <- function() x 
  list(setmat = setmat, getmat = getmat, setinv = setinv, getinv = getinv)
}


## Write a short comment descrcaibing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmat()
  i <- x$getinv()
  if (!is.null(i)) {
    print("fetching from cache")
    return(i)
  }
  else{
    inv = solve(m)
    x$setinv(inv)
    inv
  }
}
