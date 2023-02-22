#Acessar, extrair e modificar dadosem variávies

inteiros = c(1,2,3,4,5)

#por posição específica
inteiros[3]

#todas as variáveis exeto uma específica
inteiros[-3]

#dados em uma faixa de posições
inteiros[1:3]

#verificando o comprimento
length(inteiros)

#acesso por meio de condições
inteiros[inteiros == 5]
inteiros[inteiros != 5]
inteiros[inteiros <= 2]

setwd("C:/Users/sisaa/Documents/CursoR/PlayingWithR")
df <- read.csv("owid-covid-data (1).csv")

#filtros em dataFrames
#O acesso a linhas e colunas se dá no modelo <nome_dataframe>[linha, coluna]
df[1,1]
df[2,3]
#ao deixar um dos componentes(linha/coluna) recolhemos todos os dados
df[1,] #todas as colunas da linha 1
df[,1] #todas as linhas da coluna 1

#Acessando colunas 

col <- df[1:10, -29:-34] #linhas de 1 a 10 | todas as colunas exeto 34 a 29

col <- df[1,]
class(col)

#Fazendo algo análogo ao GroupBy do Python

df$continent = as.factor(df$continent)
summary(df$continent)
americaData <- df[df['continent'] == "North America"]

str(df$continent)
summary(df$continent)
df$continent[2]

#criando dataframe

nomes = c("Clodoaldo Pereira", "Maria Betânia")
idades = c(20,21)
df <- data.frame(nomes, idades)
