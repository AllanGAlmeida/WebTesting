*** Settings ***
Documentation    Essa suite testa o site Saucedemo.com
Resource         Saucedemo_resourses.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

*** Test Cases ***   
Caso de teste 01 - Eu, como Herói, desejo realizar a compra de camisa vermelha;
    [Documentation]  Esse teste verifica os produtos do site Saucedemo.com
    ...              e faz a realização da compra do produto camisa vermelha seguindo todos os passos até que a compra seja finalizada
    [Tags]           login    produtos    compra_produtos    finalizar_compra
    Acessar a tela de login do site saucedemo.com
    Realizar o login com o usuario e a senha
    verificar se o titulo Swaglabs seja apresentado
    Verificar se o titulo da pagina fica "Swag Labs"     
    Verificar que seja apresentado os produtos da loja
    Adicionar no carrinho de compras o produto Test.allTheThings() T-Shirt(Red)
    Clicar no carrinho para finalizar a compra
    Verificar se o produto desejado esta no carrinho
    clicar em checkout para poder dar continuidade a compra
    Clicar na caixa de informação First Name e colocar seus dados
    Verificar o Description
    Verificar o Payment Information
    verificar o Shipping Information
    Verificar item total
    Verificar Tax
    Verificar total
    Clicar em Finish
    Verificar que seja apresentado checkout complete!

    

# Caso de teste 02 - Eu, como Herói, desejo realizar a compra de bolsa;
#     [Documentation]  Esse teste verifica os produtos do site Saucedemo.com
#     ...              e faz a realização da compra do produto Bolsa seguindo todos os passos até que a compra seja finalizada
#     [Tags]           login    produtos    compra_produtos    finalizar_compra
#     Acessar a tela de login do site saucedemo.com
#     Realizar o login com o usuario e a senha
#     verificar se o titulo Swaglabs seja apresentado
#     Verificar se o titulo da pagina fica "Swag Labs"
#     Verificar que seja apresentado os produtos da loja
#     Adicionar no carrinho de compras o produto Sauce labs backpack
#     Clicar no carrinho para finalizar a compra
#     Verificar se o produto desejado esta no carrinho
#     clicar em checkout para poder dar continuidade a compra
#     Clicar na caixa de informação First Name e colocar seus dados
#     Verificar o Description
#     Verificar o Payment Information
#     verificar o Shipping Information
#     Verificar item total
#     Verificar Tax
#     Verificar total
#     Clicar em Finish
#     Verificar que seja apresentado checkout complete!



# Caso de teste 03 - Eu, como Herói, quero ordenar os valores do menor para o maior e que seja comprado os dois produtos menores
#     [Documentation]    Esse teste verifica os produtos do site Saucedemo.com
#     ...                e faz a alteração nas opções Name para Price low to high
#     ...                e faz a realização de compra com os produtos de preço mais baixo seguindo todos os passos ate que a compra seja finalizada.
#     [Tags]             produtos    opções_Name    alteração_para_price_low_to_high    compra_produtos    finalizar_compra
#     Acessar a tela de login do site saucedemo.com
#     Realizar o login com o usuario e a senha
#     Verificar se o titulo da pagina fica "Swag Labs"
#     verificar se o titulo Swaglabs seja apresentado
#     Verificar que seja apresentado os produtos da loja
#     verificar que apresente as opções Name (A to Z), Name (Z to A), Price low to high, Price high to low.
#     Clicar na caixa de opções
#     Selecionar a opção Price low to high
#     verificar que os produtos na lista seja apresentado dos preços mais baixo para os mais caros
#     Adicionar no carrinho de compras o produto Sauce Labs Onesie
#     Adicionar no carrinho de compras o produto Sauce Labs Bike Light
#     Clicar no carrinho para finalizar a compra
#     Verificar se os produtos desejado estão no carrinho
#     clicar em checkout para poder dar continuidade a compra
#     Clicar na caixa de informação First Name e colocar seus dados
#     Verificar o Description
#     Verificar o Payment Information
#     verificar o Shipping Information
#     Verificar item total
#     Verificar Tax
#     Verificar total
#     Clicar em Finish
#     Verificar que seja apresentado checkout complete!
    