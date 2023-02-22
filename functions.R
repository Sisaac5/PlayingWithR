soma <- function(x){
  y <- 0
  for (a in x){
    y = y + a
  }
  return(y)
}

teste = c(1,2,3,4,5)
print(soma(teste))