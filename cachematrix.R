## Put comments here that give an overall description of what your
## functions do

## This function sets up the the caching subfunctions for the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<-NULL
  }
  get <- function() x
  setinverse <- function(inv) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## performs a null check on the existing matrix to determine if it has already
## been calculated, calculates it otherwise

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse() 
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data < x$get()
  i <<- solve(x) %*% x
  i
}
