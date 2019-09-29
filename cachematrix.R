## Put comments here that give an overall description of what your
## functions do
## The first function is a constructor the second one is the actual solve function 

## A constructor for a sepcial type of matrix that can remember its inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
    set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinv <- function(solve) m <<- solve
	getinv <- function() m
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Find the inverse of a CacheMartix 
## If the invese is already calculated, the function will return immediately

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinv()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	data
	m <- solve(data)
	x$setinv(m)
	m
}
