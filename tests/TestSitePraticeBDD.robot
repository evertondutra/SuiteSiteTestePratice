*** Settings ***
Resource        ../resources/Resource.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Variables ***
${url}      http://automationpractice.com/index.php?
${BROWSER}  chrome

*** Test Case ***
Cenário 01: Pesquisar produto existente.
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produtro "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produto não existente.
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a página deve exibir a mensagem de erro "No results were found for your search "itemNãoExistente""

*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar

Então o produtro "${PRODUTO}" deve ser listado na página de resultado da busca
    Conferir se o produto "${PRODUTO}" foi encontrado

Então a página deve exibir a mensagem de erro "${MENSAGEM_ALERTA}"
    Conferir mensagem de erro "${MENSAGEM_ALERTA}"

