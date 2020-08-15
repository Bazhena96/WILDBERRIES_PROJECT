*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Guest user search the product
    Load Page And Maximize Browser Window
    User Search  Dress
    Close Browser
Verify that search completed
    Load Page And Maximize Browser Window
    User Search  Dress
    Verify That Search Completed
    Close Browser
Guest user add product to the cart
    [Documentation]  First product from the list.
    Load Page And Maximize Browser Window
    User Search  Dress
    Add Product To The Cart
    Close Browser
Verify that product added to the cart
    Load Page And Maximize Browser Window
    User Search  Dress
    User Choose The Product Size
    Add Product To The Cart
    Verify That Product Added To The Cart    В вашей корзине пока ничего нет
    Close Browser

    