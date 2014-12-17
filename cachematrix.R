## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#create a function with a null matrix argument
makeCacheMatrix<-function(x=matrix()){
  m<-NULL ##initialize the value of the matrix inverse to NULL
  ##delcare another function set where the value will be cached in 1.in 
  ##. Matrix is created
  
set<-function(y){
  x<<-y
   m<<-NULL## change the value of inverse of the matrix in case the matrix was changed
}
##gets the value of the inverse
get<-function(){c<-as.data.frame(x)
c}
#calulates the inverse of non-singular matrix via the solve function
setsolve<-function(solve) {m<<-slove
                           k<-as.data.frame(m)
k}
#gets the inverse
getsolve<-function(){
  t<-as.data.frame(m)
  t
}
## passes the value of the function makeCacheMatrix
list(set=set(),get=get(),
     setsolve=setsolve(),
     getsolve=getsolve)()}


## Write a short comment describing this function
# used to get the cache of the matrix
cacheSolve<-function(x,...){
  m<-x$getsolve()
  #if the inverse matrix exits ,gets it.
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  #if the inverse if not there,fitst it is calculated and then retrieved
  data<-x$get()
  m<-solve(data,...)
  x$setsolve(m)
  m
}
