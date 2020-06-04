## creates matrix so as to cache it's inverse -> square matrix, here its matrix 'x'
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) i <<- final
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## the below function calcualtes the inverse of the matrix 
## that has formed in the above function and returns
cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(!is.null(i)) {
    message("cache final")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}