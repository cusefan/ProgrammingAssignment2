##This function creates a special "matrix" object that can cache its inverse.

## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        	## create a matrix object x and some associated sub-functions/methods
           	## Method to set the value of the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
		}

    		## Method the get the value of the matrix
    get <- function() {
    		## Return the matrix m
		}

    		## Method to set the value of the inverse of the matrix
    setInverse <- function(inverse) {
        	i <<- inverse
		}

    		## Method to get the value of the inverse of the matrix
    getInverse <- function() {
        	## Return the inverse property i
		}

}

## This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated (and
## the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        	## Return a matrix that is the inverse of 'x'

        	m <- x$getinverse()
        	if(!is.null(m)) {
                message("getting cached data")
                return(m)
        	}
        
		data <- x$get()
        	m <- solve(data, ...)
        	x$setinverse(m)
        	m
}
