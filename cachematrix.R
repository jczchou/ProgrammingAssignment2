## Two functions here, first is makeCacheMatrix which creates a square matrix, pass it
## to cacheSolve function which then computers its inverse and pass the inverse back
## to makeCacheMatrix to be cached
## 
## The second function cacheSolve gets the matrix returned by the makeCacheMatrix 
## function, computes the inverse if the inverse for that matrix has not been cached
## if the inverse has been cached then it retrieves the inverse from the makeCacheMatrix
## function

makeCacheMatrix <- function(x = matrix(rnorm(9), 3, 3)) {
  cache_inverse <- NULL

  getMatrix <- function() x (
    #cache_inverse_m <<- NULL
    cacheSolve(x)
    #return inverse_m
  )
}

## cacheSolve gets the matrix from makeCacheMatrix, and if its inverse has already been
## cached by makeCacheMatrix then it just retrieves the cached value or else 
## it computes the matrix by using solve()

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cache_inverse  <- x
  if(!is.null(cache_inverse)) {
    message("getting cached inverse")
    return(cache_inverse)
  }
  else {
    invr <- solve(x)
    return(invr)
  }
}

