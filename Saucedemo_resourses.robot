*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                      https://www.saucedemo.com/
${Login}                    login-button
${header_Swaglabs}          //div[contains(@class,'logo')]
${inventory}               inventory_container
*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar a tela de login do site saucedemo.com
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Login}

Realizar o login com o usuario e a senha
    Input Text    locator=user-name    text=standard_user
    Input Text    locator=password     text=secret_sauce
    Click Element    locator=login-button

verificar se o titulo Swaglabs seja apresentado
    Wait Until Element Is Visible     locator=${header_Swaglabs}

Verificar se o titulo da pagina fica "${TITULO}" 
    Title Should Be    title=${TITULO}

Verificar que seja apresentado os produtos da loja
    Wait Until Page Contains Element    locator=${inventory}


# O passo a seguir é o teste do cenario 1

 Adicionar no carrinho de compras o produto Test.allTheThings() T-Shirt(Red)
     Click Element    locator=//img[@alt='Test.allTheThings() T-Shirt (Red)']
     Click Element    locator=add-to-cart-test.allthethings()-t-shirt-(red)

Clicar no carrinho para finalizar a compra
    Click Element    locator=//a[@class='shopping_cart_link'][contains(.,'1')]

Verificar se o produto desejado esta no carrinho
    Wait Until Element Is Visible    locator=//div[@class='cart_item'][contains(.,'1Test.allTheThings() T-Shirt (Red)This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.$15.99Remove')]
     
clicar em checkout para poder dar continuidade a compra
    Click Element    locator=checkout

Clicar na caixa de informação First Name e colocar seus dados
    Input Text    locator=first-name    text=Allan
    Input Text    locator=last-name     text=Almeida
    Input Text    locator=postal-code   text=06363420
    Click Element    locator=continue
    
Verificar o Description
    Wait Until Element Is Visible    locator=//div[@class='cart_desc_label'][contains(.,'DESCRIPTION')]

Verificar o Payment Information
    Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Payment Information:')]

verificar o Shipping Information
    Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Shipping Information:')]

Verificar item total
    Wait Until Element Is Visible    locator=//div[@class='summary_subtotal_label'][contains(.,'Item total: $15.99')]

Verificar Tax
    Wait Until Element Is Visible    locator=//div[@class='summary_tax_label'][contains(.,'Tax: $1.28')]

Verificar total
    Wait Until Element Is Visible    locator=//div[@class='summary_total_label'][contains(.,'Total: $17.27')]

Clicar em Finish
    Click Element    locator=finish

Verificar que seja apresentado checkout complete!
    Wait Until Element Is Visible    locator=//span[@class='title']



# O passo a seguir é cenario do teste 2

# Adicionar no carrinho de compras o produto Sauce labs backpack
#      Click Element    locator=//img[@alt='Sauce Labs Backpack']
#      Click Button   locator=add-to-cart-sauce-labs-backpack

# Clicar no carrinho para finalizar a compra
#     Click Element    locator=//a[@class='shopping_cart_link'][contains(.,'1')]

# Verificar se o produto desejado esta no carrinho
#     Wait Until Element Is Visible    locator=//div[@class='cart_item'][contains(.,'1Sauce Labs Backpackcarry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.$29.99Remove')]
     
# clicar em checkout para poder dar continuidade a compra
#     Click Element    locator=checkout

# Clicar na caixa de informação First Name e colocar seus dados
#     Input Text        locator=first-name    text=Allan
#     Input Text        locator=last-name     text=Almeida
#     Input Text        locator=postal-code   text=06363420
#     Click Element     locator=continue
    
# Verificar o Description
#     Wait Until Element Is Visible    locator=//div[@class='cart_desc_label'][contains(.,'DESCRIPTION')]

# Verificar o Payment Information
#     Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Payment Information:')]

# verificar o Shipping Information
#     Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Shipping Information:')]

# Verificar item total
#     Wait Until Element Is Visible    locator=//div[@class='summary_subtotal_label'][contains(.,'Item total: $29.99')]

# Verificar Tax
#     Wait Until Element Is Visible    locator=//div[@class='summary_tax_label'][contains(.,'Tax: $2.40')]

# Verificar total
#     Wait Until Element Is Visible    locator=//div[@class='summary_tax_label'][contains(.,'Tax: $2.40')]

# Clicar em Finish
#     Click Element    locator=finish

# Verificar que seja apresentado checkout complete!
#     Wait Until Element Is Visible    locator=//span[@class='title']



# # O passo a seguir é cenario do teste 3

# verificar que apresente as opções Name (A to Z), Name (Z to A), Price low to high, Price high to low.
#     Wait Until Element Is Visible    locator=//select[contains(@class,'product_sort_container')]

# Clicar na caixa de opções
#     Click Element    locator=//select[contains(@class,'product_sort_container')]

# Selecionar a opção Price low to high
#     Click Element    locator=//option[@value='lohi'][contains(.,'Price (low to high)')]

# verificar que os produtos na lista seja apresentado dos preços mais baixo para os mais caros
#     Wait Until Element Is Visible    locator=${inventory}

# Adicionar no carrinho de compras o produto Sauce Labs Onesie
#     Click Button    locator=add-to-cart-sauce-labs-onesie

# Adicionar no carrinho de compras o produto Sauce Labs Bike Light
#     Click Button    locator=add-to-cart-sauce-labs-bike-light

# verificar se a tela de produtos esta sendo apresentada
#     Wait Until Element Is Visible    locator=${inventory}

# Clicar no carrinho para finalizar a compra
#     Click Element    locator=//a[contains(@class,'shopping_cart_link')]

# Verificar se os produtos desejado estão no carrinho
#     Wait Until Element Is Visible    locator=//div[@class='inventory_item_name'][contains(.,'Sauce Labs Onesie')]
#     Wait Until Element Is Visible    locator=//div[@class='inventory_item_name'][contains(.,'Sauce Labs Bike Light')]  
# clicar em checkout para poder dar continuidade a compra
#     Click Element    locator=checkout

# Clicar na caixa de informação First Name e colocar seus dados
#     Input Text        locator=first-name    text=Allan
#     Input Text        locator=last-name     text=Almeida
#     Input Text        locator=postal-code   text=06363420
#     Click Element     locator=continue
    

# Verificar o Description
#     Wait Until Element Is Visible    locator=//div[@class='cart_desc_label'][contains(.,'DESCRIPTION')]

# Verificar o Payment Information
#     Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Payment Information:')]

# verificar o Shipping Information
#     Wait Until Element Is Visible    locator=//div[@class='summary_info_label'][contains(.,'Shipping Information:')]

# Verificar item total
#     Wait Until Element Is Visible    locator=//div[@class='summary_subtotal_label'][contains(.,'Item total: $17.98')]

# Verificar Tax
#     Wait Until Element Is Visible    locator=//div[@class='summary_tax_label'][contains(.,'Tax: $1.44')]

# Verificar total
#     Wait Until Element Is Visible    locator=//div[@class='summary_total_label'][contains(.,'Total: $19.42')]

# Clicar em Finish
#     Click Element    locator=finish

# Verificar que seja apresentado checkout complete!
    Wait Until Element Is Visible    locator=//span[@class='title']
    