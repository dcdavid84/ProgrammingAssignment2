


makeCacheMatrix <- function(x = matrix()) {

## creates special matrix, i.e. list containing functions to 
## 1/ set and get the value of the matrix
## 2/ set and get the inverse of the matrix 
## input: matrix, output: list  
     
    inv<-NULL
    getM <-function()x
    setM <-function(m)
        {
        x<<-m
        inv<<-NULL
        }
    getInv <-function()inv
    setInv <-function(m)inv<<-m
    list(getM=getM, setM=setM, getInv=getInv, setInv=setInv)
}


cacheSolve <- function(x, ...) {
## Return inverse of matrix
## Retrieve inverse from cache if previously calculated

    if (!is.null(x$getInv()))
        {
        print("Retrieving inverse from cache")
        return(x$getInv())
        }
    x$setInv(solve(x$getM()))
    x$getInv()
}
