## creamos getters y seter para x y inv que es la inversa y alocamos ambas en cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(st) {
    x <<- st
    inv <<- NULL
  }
  get <- function() x
  setinverso <- function(inverse) inv <<- inverse
  getinverso <- function() inv
}


## usamos el getter del inverso, verificamos que no sea null y lo mostramos si no lo es de serlo setteamos el invero con la funcion solve
cacheSolve <- function(x, ...) {
  inv <- x$getinverso()
  if (!is.null(inv)) {
    message("el inverso ya existe")
    return(inv)
  }
  inv <- solve(x$get(), ...)
  x$setinverso(inv)
  return(inv)
}
