#Primeiros passos com a linguagem R

#Atribuição de valores

a = 5
A <- 5

#Existem 2 operadores que possibilitam a atribuição, entretanto o operador seta é o mais utilizado.
#Para rodar uma linhas de código, devemos selecioná-la e precionar Crtl + Enter. O mesmo vale para quando escolhemos mais de uma linha

#Quando existem dúvidas a respeito da forma como funcionam algumas funções ou métodos, podemos usar o comando ?<function>
#Com isso, será aberta uma documentação nativa do Próprio Rstudio.

?c
myVector = c(1,2,3,4,5)

?summary
summary(myVector)

#Outrossim, também é possível instalar e importar pacotes.

#Imagine que não sabemos a qual pacote pertence um método
#Podemos, com muita facilidade, pesquisar no endereço 'https://www.rdocumentation.org/' e descobrir a qual pacote pertence.

?str_c
install.packages("stringr") #instala pacote
library(stringr)# importa pacote

nome = "Isaac"
sobrenome = "Sebastian"
nomeCompleto = str_c(nome, sobrenome, sep = " ")

hello = "Hello World"
hello