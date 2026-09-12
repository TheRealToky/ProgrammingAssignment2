## makeCacheMatrix creates a special "matrix" object that can cache
## its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }

    get <- function() x

    # store the computed inverse in cache
    setinverse <- function(inverse) inv <<- inverse

    # retrieve the cached inverse
    getinverse <- function() inv

    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}