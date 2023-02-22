#Referências para o estudo de Programação Orientada a Objetos em R
#https://bendeivide.github.io/cursor/nintermediario.html#poo

#Criando uma classe S3
#Inicialmente, é necessário criar uma com a nomenclatura de atributos muito bem definida

a <- list(name = "Adam", age = 21)
class(a) <- "Pessoa"
a

#Configurando o print de um objeto
print.Pessoa <- function(obj){
  cat("Nome: ", obj$name, "\n")
  cat("Idade: ", obj$age, "\n")
}

print(a)

#Verificando atributos de um objeto
attributes(a)

#Adicionando atributos a um objeto
attr(a, "Last Name") <- c("Smith")
attributes(a)


#É válido lembrar que existem alguns tipos de implementação de classes em R

#Classe S4

#o comando setClass(), é usado para criar uma classe, dado seu nome e uma lista com atributos e seus tipos

setClass("Funcionario",slots = list(name = "character", salario = "numeric"))

#assim como no C++, usamos a sintaxe new para alocar objetos de forma dinâmica

a <- new("Funcionario", name = "Adam", salario = 6000)
a

#Existe uma forma de definir algo análogo a um construtor
Funcionario <- setClass("Funcionario",slots = list(name = "character", salario = "numeric"))
f1 = Funcionario(name="Amanda", salario=7500)
print(f1)

#definindo métodos
setMethod("info", "Funcionario", function(obj){
  cat("Name: ", obj$name, "\nSalary: ", obj$salario, "\n")
})