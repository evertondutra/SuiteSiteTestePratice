*** Settings ***
Resource            ../resources/Resource.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Variables ***
${url}      http://automationpractice.com/index.php?
${BROWSER}  Chrome

*** Test Case ***
Caso de teste 01: Pesquisar produto existente.
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi encontrado

Caso de teste 02: Pesquisar produto não existente.

    Acessar a página home do site
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem de erro "No results were found for your search "itemNãoExistente""


#*** Keywords ***

