## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#gets and sets to cache inverted matrix
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL        
        }
        get <- function() x 
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m 
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
#get inverse if it exists or create it 
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        ## Return a matrix that is the inverse of 'x'
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
