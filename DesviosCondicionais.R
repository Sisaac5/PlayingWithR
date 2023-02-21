x <- 31
if(x == 30){
  print("entrou")
}else{
  print("não entrou")
}

x<-0

while(x <= 10){
  print(x)
  x <- x + 1
  if(x == 10){
    print("Esse laço chegou ao fim")
  }
}

teste = readline(prompt = "Digite seu nome: ")
Bob Esponja

numero = as.numeric(readline("Digite um número: "))
1

radiuos = as.numeric(readline())
3
volume <- (4/3) * 3.14 * radiuos * radiuos * radiuos
cat("VOLUME = ", volume)

#teste <- scan()
for(item in teste){
  print(item)
}

cat("Old test = ", teste[1], teste[2], teste[3], teste[4], teste[5], sep = " ")
for(i in 1:length(teste)){
  teste[i] <- teste[i] + 1
}
cat("Old test = ", teste[1], teste[2], teste[3], teste[4], teste[5], sep = " ")

install.packages("readr")
?read.csv()
library(readr)
data1 <- read.csv('C:\Users\sisaa\Desktop\NewR\DesviosCondicionais.R')
head(data1, 5)
