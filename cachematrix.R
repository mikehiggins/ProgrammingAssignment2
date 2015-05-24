## Coursera - R Programming
## Programming Assignment 2
## ------------------------
## 
## Caching the Inverse of a Matrix
## Calculating the inverse of a matrix can be a costly computation.
## Thus it is desirable to cache the inverse of a matrix rather than perform the
## calculation repeatedly.

## The below pair of functions creates a special matrix object that can cache its inverse, and
## computes the inverse of the special matrix. If the matrix has alread been computed then
## the cached result should be returned instead

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {

       m <- NULL								# creates variable m, with null value
        set <- function(y) {					# creates "set" function which takes an argument "y"
                x <<- y							# Assigned value of "y" argument to "x" using <<- operator
                m <<- NULL						# Assigns value of "NULL" to "m" using <<- operator
        }
        get <- function() {
        		x
        }						# 
        setInv <- function(source) {
        		m <<- source
        }
        getInv <- function() {
        		m
        }
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

## Compute the inverse of a matrix. Check if cached copy available before computing each time
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInv()		# assign the function getInverse to the value of "inv"
        # Check if the inverse has already been computed, if so, return the cached value
        if(!is.null(inv)) {
                message("getting cached inverse")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInv(inv)

        return(inv)
}
