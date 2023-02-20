#Tipagem do R

salary = 1380
horasTrabalhadas = 220
valorDaHora <- salary/horasTrabalhadas

valorDaHorai <- as.integer(valorDaHora)
valorDaHoran <- round(valorDaHora)

salarys = "1380"
horasTrabalhadass = "220"

#A tabela do ambiente exibe todas as informações de variáveis, valores, tipos e espaços ocupados

#Tipo factor
#- Muito importante para análise estatística e modelagem de problemas
#Essa estrutura categoriza os dados e pode armazená-los em níveis.
#São úteis para colunas com um número limitado de valor únicos

genero = as.factor(c("M", "F","M", "F","M", "F","M", "F"))
summary(genero)
