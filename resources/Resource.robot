*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      http://automationpractice.com/index.php?
${BROWSER}  Google Chrome


*** Keywords ***
Abrir navegador
    Open Browser       ${url}      ${BROWSER}

Fechar navegador
    Close Browser

Acessar a página home do site
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text      id:search_query_top      ${PRODUTO}

Clicar no botão pesquisar
    Click Button    class:button-search
    sleep   5
Conferir se o produto "${PRODUTO}" foi encontrado
    wait until element is visible   class:product-listing
    title should be                 Search - My Store
    page should contain image       http://automationpractice.com/img/p/7/7-home_default.jpg
    page should contain link     xpath://*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]