## two functions to manage the caching of the inverse of a matrix, one creates the object and the other one verify 
## if the inverse of the matrix is cached

## creates an x object and setters and getters functions for the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        
        i <- NULL
        
        setmatrix <- function(y){
                x <<- x
                m <<- NULL
        }
        
        getmatrix <- function() x
        
        setinverse <- function(inv) i <<- inv
        
        getinverse <- function() i
        
        list(setmatrix = setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)        
}


## Returns inverse from cache if exist, if not computes the inverse and save it in cache

cacheSolve <- function(x, ...) {
        
        i <- x$getinverse()
        if(!is.null(i)){
                message("Inverse from cache")
                return(i)
        }
        
        inv <- solve(x$getmatrix())
        x$setinverse(inv)
        
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
