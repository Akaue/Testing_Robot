*** Settings ***
Library    Browser
Resource    ../resources/keywords_a.robot
Resource    ../variables/data.robot
Resource    ../tests/login_test.robot



*** Test Cases ***
Realizar compra de 5 livros
    [Tags]   teste     regressivo    login
    Login Com Sucesso

