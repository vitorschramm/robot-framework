*** Settings ***
Resource     ../resource/Resource.robot
Test Setup       Abrir Navegador
# Test Teardown    Fechar Navegador

###Setup ele roda keyword antes da suite ou antes de um teste###


###TEARDOWN ele roda keyword depois de uma suite ou um teste###

*** Test Case ***

Caso de Teste 01: Pesquisa produto existente:
     Acessar a página home do site
     Digitar o nome do produto "Blouse" no campo de Pesquisa
     Clicar no botão Pesquisar
     Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisa produto não existente:
    Acessar a página home do site
    Digitar o nome do produto "produtoNaoExistente" no campo de Pesquisa
    Clicar no botão Pesquisar
    Conferir a mensagem de erro "No results were found for your search "produtoNaoExistente""
