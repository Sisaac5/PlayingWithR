fatorial <- function(x){
  resultado <- 1
  
  if(x==0)
    return(1)
  
  for(i in 1:x){
    resultado <- resultado * i 
  }
  
  return(resultado)
}

combinacao <- function(n, x){
  return(fatorial(n) / (fatorial(x) * fatorial(n - x)))
}


hiperGeometrical <- function(N, r, n, k){
  return((combinacao(r,k) * combinacao(N-r, n-k)) / combinacao(N, n))
}

matematicalHopeHG <- function(N,r,n,k){
  return(n * (r/N))  
}

varianceHG <- function(N,r,n,k){
  return(n*(r/N)*(1-(r/N))*((N-n)/(N-1)))
}

hiperGeometrical(100, 10, 5, 0)
