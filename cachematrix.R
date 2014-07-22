## Put comments here that give an overall description of what your
## functions do

## Caching function

makeCacheMatrix <- function(m = matrix()) {
        m<-NULL 
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setMatrix<-function(solve) m<<- solve
        getMatrix<-function() m
        list(set=set, get=get, setMatrix=setMatrix, getMatrix=getMatrix)
}

## Solving

cacheSolve <- function(x, ...) {
        # ry 
        m<-x$getMatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setMatrix(m)
        m
}
