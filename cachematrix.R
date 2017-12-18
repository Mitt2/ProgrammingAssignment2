##  This function creates a special "matrix" object that can cache 
## its inverse


## Caching the Inverse of a Matrix

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(x){
		matrix<<- x;
		inverse <<- NULL;
	}
get <- function() return(matrix);
setinv <- function(inv) inverse<<- inv;
getinv <- function() retun(inverse);
return(list(set = set, get = get, setinv = setinv, getinv = getinv ))
}

## This function computes the inverse of the special "matrix" ##returned by makeCacheMatrix above. If the inverse has 
##already been calculated (and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- matrix$getinv()
        if(!is.null(inverse)) {
        	message("cache dat...")
        	return(inverse)
        }
        dat <- matrix$get()
        inverse <- solve(data,...)
        matrix$setinv(inverse)
        return(inverse)
}

