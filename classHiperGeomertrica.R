setwd("C:/Users/sisaa/Desktop/CursoR/PlayingWithR")
source("hiperGeometrical.R")#Importando as funções criadas no Script anterior

#Criando um construtor para a classe de Distribuição Hiper Geométrica

hiperGeo = setClass("HiperGeometrica", slots = list(N = "numeric", r = "numeric", n = "numeric"))

print.HiperGeometrica <- function(obj,k){
  attr(obj, "Esperanca") <- matematicalHopeHG(obj@N, obj@r, obj@n)
  attr(obj, "Variancia") <- varianceHG(obj@N, obj@r, obj@n)
  result <- hiperGeometrical(obj@N, obj@r, obj@n, k)
  cat("P(", k, ")= ", result, "\n")
  cat("E(x) = ", obj@Esperanca, "\n")
  cat("V(x) = ", obj@Variancia, "\n")
  return(result)
}

teste = hiperGeo(N=100, r=10, n=5)
print(teste, 0)
