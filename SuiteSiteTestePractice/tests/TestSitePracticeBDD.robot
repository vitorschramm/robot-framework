*** Settings ***
Resource    ../resource/Resource.robot

###Setup ele roda keyword antes da suite ou antes de um teste###
###TEARDOWN ele roda keyword depois de uma suite ou um teste###

*** Test Case ***
Cenário 01: Pesquisa produto existente:
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisa produto não existente:
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então a página deve exibir a mensagem ""No results were found for your search "itemNãoExistente""

*** Keywords ***
