## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## THis is a list of functions that can be done on the matrix
makeCacheMatrix <- function(x = matrix()) {
        iv <- NULL
        # set the matrix
        set <- function(y = matrix()) {
                x <<- y
                iv <<- NULL
        }
        get <- function() x # get the matrix
        # set the inverse matrix
        setsolve <- function(solve) iv <<- solve 
        # get the inverse matrix
        getsolve <- function() iv
        # return all the defined operations
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Write a short comment describing this function

# This function will check if the inverse matrix existed
# if not, then compute the inverse matrix and store it 
# then output the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        iv <- x$getsolve()
        if(!is.null(iv)) {
                message("getting cached data")
                return(iv)
        }
        data <- x$get()
        iv <- solve(data)
        x$setsolve(iv)
        iv
}
