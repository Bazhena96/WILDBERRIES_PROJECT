*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Signed user search the product
    Load Page And Maximize Browser Window
    User Search  Dress
    Close Browser
Verify that search completed
    Load Page And Maximize Browser Window
    User Search  Dress
    Verify That Search Completed
    Close Browser
Signed user add product to the cart
    [Documentation]  First product from the list.
    Load Page And Maximize Browser Window
    User Search  Dress
    Add Product To The Cart
    Close Browser
Verify that product added to the cart
    Load Page And Maximize Browser Window
    Get Code
    User Search  Dress
    Add Product To The Cart
    User Choosed The Product Size
    Verify That Product Added To The Cart  css=.item-in-basket
    Close Browser
    