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
    Get Code  +375255433153
    User Search  Dress
    Add Product To The Cart
    Verify That Product Added To The Cart  css=#body-layout > div > div > div.lk.j-b-lk-basket.cart-page.unregistered.by > div > div.order-details > div.visitedGoods-in-basket > div > div.list.j-products-container > div > a > div.item-img > img
    Close Browser
    