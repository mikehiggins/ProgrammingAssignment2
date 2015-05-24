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

 makeVector <- function(x = numeric()) {
        m <- NULL								# creates variable m, with null value
        set <- function(y) {					# creates a variable called set with function
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
