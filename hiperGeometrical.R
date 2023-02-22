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
  print(combinacao(r,k))
  print(combinacao(N-r,n-k))
  print(combinacao(N,n))
  return((combinacao(r,k) * combinacao(N-r, n-k)) / combinacao(N, n))
}

hiperGeometrical(100, 10, 5, 0)
