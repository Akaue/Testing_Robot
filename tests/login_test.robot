*** Settings ***
Library    Browser
Resource    ../resources/keywords_a.robot
Resource    ../variables/data.robot



*** Test Cases ***
Login Com Sucesso
    [Tags]   smoke     regressivo    login
    Abrir A Página De Login 
    Preencher Usuário E Senha   ${USUARIO1}     ${SENHA2} 
    Clicar Em Login
    Validar Que O Login Foi Bem Sucedido

Login sem sucesso
    [Tags]    smoke    login   negativo
    Abrir A Página De Login
    Preencher Usuário E Senha       ${USUARIO_INVALIDO}     ${SENHA_INVALIDA}   
    Clicar Em Login
    Validar Que O Login Não Foi Bem Sucedido    
