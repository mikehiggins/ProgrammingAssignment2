## Coursera - R Programming
## Programming Assignment 2
## ------------------------
## 
## Caching the Inverse of a Matrix
## Calculating the inverse of a matrix can be a costly computation.
## Thus it is desirable to cache the inverse of a matrix rather than perform the
## calculation repeatedly.

## The below pair of functions creates a special matrix object that can cache its inverse, and
## computes the inverse of the special matrix. If the matrix inverse has alread been computed then
## the cached result should be returned instead

## This simply returns a list of four functions for use with the matrix
makeCacheMatrix <- function(x = matrix()) {

		# Set the cache inverse to null
       	inv <- NULL

		# Creates "set" function which takes an argument "y"
        set <- function(y) {
                x <<- y			# Assign new matrix to x
                inv <<- NULL	# If a new matrix is set, then set the inverse to null
        }
		# Just return the current matrix
        get <- function() {
        		x
        }
		# Set the matrix inverse using the source() function call
        setInv <- function(source) {
        		inv <<- source
        }
        # Get the matrix inverse
        getInv <- function() {
        		inv
        }
        # Return the list of the four functions
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}

## Compute the inverse of a matrix. Check if cached copy available before computing
## and return the cached version if available
cacheSolve <- function(x, ...) {

		# Assign the function getInverse to the value of "inv"
        inv <- x$getInv()
        # Check if the inverse has already been computed, if so, return the cached value and a message
        if(!is.null(inv)) {
                message("getting cached inverse")
                return(inv)
        }
        data <- x$get()
        # Find the inverse of the matrix and assign to inv
        inv <- solve(data, ...)
        x$setInv(inv)
        return(inv)
}