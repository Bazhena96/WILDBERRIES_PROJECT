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
Guest User Add Product To The Card
    [Documentation]  First Product From The List
    Open and Load
    Maximize Browser Window
    User Search  Dress
    Add Product To Card
    Close Browser
Verify That Product Added To The Card
    Open and load
    Maximize Browser Window
    User Search  Dress
    User Choose The Product Size
    Add Product To Card
    Verify That Product Added To The Card    В вашей корзине пока ничего нет
    Close Browser

    