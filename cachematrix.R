## Put comments here that give an overall description of what your
## functions do

## creates special matrix - list containing functions to 
## set and get the value of the matrix
## set and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

inv<-NULL

getM <-function()x
setM <-function(matrix){x<<-matrix}

getInv <-function()m
setInv <-function(matrix){inv<<-matrix}

list(getM=getM, setM=setM, getInv=getInv, setInv=setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if (!is.null(x$getInv))
{
  print("Retrieving inverse from cache")
  return(x$getInv)
}
  x$setInv(solve(x$getM))
}
