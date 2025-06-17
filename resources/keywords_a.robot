*** Settings ***            
Library         Browser
Resource    ../variables/data.robot



*** Keywords ***
Abrir A Página De Login
    New Browser    headless=False
    New Context
    New Page    ${URL}
    Click    id=menu-item-50
    
Preencher Usuário E Senha
    [Arguments]    ${USUARIO}    ${SENHA}
    Fill Text    input[name="username"]    ${USUARIO}
    Fill Text    input[id="password"]    ${SENHA}

Clicar Em Login
    Click     input[name="login"]

Validar Que O Login Foi Bem Sucedido
    Wait For Elements State    text=${MENSAGEM_VALIDA}  visible
    ${texto}=    Get Text    text=${MENSAGEM_VALIDA}
    Should Be Equal    ${texto}    ${MENSAGEM_VALIDA}
    Take Screenshot


Validar Que O Login Não Foi Bem Sucedido 
    Wait For Elements State    text=${MENSAGEM_INVALIDA}  visible
    ${texto}=    Get Text    text=${MENSAGEM_INVALIDA}
    Should Be Equal    ${texto}    ${MENSAGEM_INVALIDA}
    Take Screenshot

Realizar login
    New Browser    headless=False
    New Context
    New Page    ${URL}
    Click    id=menu-item-50
    Fill Text    input[name="username"]    ${USUARIO1}
    Fill Text    input[id="password"]    ${SENHA2}
    Click     input[name="login"]
    Wait For Elements State    text=${MENSAGEM_VALIDA}  visible
    ${texto}=    Get Text    text=${MENSAGEM_VALIDA}
    Should Be Equal    ${texto}    ${MENSAGEM_VALIDA}
    Take Screenshot
    