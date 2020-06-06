***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Guest User Search The Product
    Open and load
    Maximize Browser Window
    User Search  Dress
    Close Browser
Verify That Search Completed
    Open and Load
    Maximize Browser Window
    User Search  Dress
    Verify That Search Completed
    Close Browser
Guest User Add Product To The Cart
    [Documentation]  First Product From The List
    Open and Load
    Maximize Browser Window
    User Search  Dress
    Add Product To The Cart
    Close Browser
Verify That Product Added To The Cart
    Open and load
    Maximize Browser Window
    User Search  Dress
    User Choose The Product Size
    Add Product To The Cart
    Verify That Product Added To The Cart    В вашей корзине пока ничего нет
    Close Browser

    