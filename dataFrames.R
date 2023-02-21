#Dataframes em R

#Inicialmente, é necessário definir o diretório de trabalho

?setwd

#Definindo diretório de trabalho
setwd("C:/Users/sisaa/Documents/CursoR")

#Importando dataFrame
df <- read.csv("owid-covid-data (1).csv")

#Analisando DataFrame
View(df)

#Verificando tipos de dados
str(df)
summary(df)

#Verificando colunas específicas de um dataFrame
View(df[1])
View(df['date'])

#Vale lembrar que diferentes sintaxes levam a diferentes tipos de estruturas de dados

#O método abaixo retorna um vetor com a tipagem da coluna escolhida
coluna <- df$location
class(coluna)

#Já essa sintaxe faz com que tenhamos um dataframe que contém apenas a coluna escolhida
coluna2 <- df[1]
class(coluna2)
View(coluna2)

#É MUITO IMPORTANTE LEMBRAR QUE,DIFERENTE DAS LINGUAGENS CONVENCIONAIS, A CONTAGEM DO R VAI SE INICIA EM 1, NÃO EM 0

#Excluindo colunas
df$iso_code <- NULL

#Alterando os tipos de dados
summary(df$continent)
df$continent <- as.factor(df$continent)
summary(df$continent)

#Criando novas colunas
df$colunaTeste <- "a"
class(df$colunaTeste)
df$colunaTeste = c(2,5,10)
df$colunaTeste = NA #Indica valor em branco
df$colunaTeste = NaN #Indica que o valor não é numérico
#Preenchendo apenas uma parte da coluna
df$colunaTeste[1:5] = c(1,2,3,4,5)

