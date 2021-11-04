*** Settings ***
Resource        ../resource/Resource.robot


*** Variables ***
${url}      http://automationpractice.com/index.php?
${BROWSER}  Chrome

*** Test Case ***
Cenário 01: Pesquisar produto existente.
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produtro "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produto não existente.
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então a página deve exibir a mensagem de erro "No results were found for your search "itemNãoExistente""

*** Keywords ***

