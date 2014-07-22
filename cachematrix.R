## Put comments here that give an overall description of what your
## functions do

## Caching function

makeCacheMatrix <- function(m = matrix()) {
        # Start with empty matrix 
        m<-NULL 
        
        # Setting the matrix 
        set<-function(y){
                x<<-y      # get from outside workspace
                m<<-NULL
        }
        # Getting the matrix
        get<-function() x
        
        # Solving function
        setMatrix<-function(solve) m<<- solve
        getMatrix<-function() m
        
        # Make list and output.
        list(set=set, get=get, setMatrix=setMatrix, getMatrix=getMatrix)
}

## Solving

cacheSolve <- function(x, ...) {
        # Get if exist and get
        m<-x$getMatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...) # Solve or pick up solution
        x$setMatrix(m)
        # Return solution
        m
}
