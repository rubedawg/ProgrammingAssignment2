## These functions together can cache the inverse of a Matrix

## 'makeCacheMatrix' 
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        cMatrix <- NULL
        
        setMatrix <- function(y) {
                x <<- y
                cMatrix <<- NULL
        }
        
        getMatrix <- function() x
        setCache <- function(inverse) cMatrix <<- inverse
        getCache <- function() cMatrix
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, setCache = setCache,
             getCache = getCache)
}


## 'cacheSolve'
## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above.