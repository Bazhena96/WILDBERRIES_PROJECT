***Settings***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Signed User Search The Product
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
Signed User Add Product To The Cart
    [Documentation]  First Product From The List
    Open and Load
    Maximize Browser Window
    User Search  Dress
    Add Product To The Cart
    Close Browser
Verify That Product Added To The Cart
    Open and load
    Maximize Browser Window
    Get Code
    User Search  Dress
    Add Product To The Cart
    User Choose The Product Size
    Verify That Product Added To The Cart  css=.item-in-basket
    Close Browser
    