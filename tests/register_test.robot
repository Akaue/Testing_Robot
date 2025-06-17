*** Settings ***
Library    Browser
Resource    ../resources/keywords_a.robot
Resource    ../variables/data.robot
Resource    ../variables/login_test.robot



*** Test Cases ***
Filtrar livros pela popularidade
  Realizar login
  Acessar pagina shop
  Filtrar livros por popularidade
  Validar que filtrou como solicitado

#Filtrar livros pelo valor
  Realizar login
  Acessar pagina shop
  Filtrar livros pelo valor
  Validar que filtrou como solicitado


#Realizar compra de 5 livros
  