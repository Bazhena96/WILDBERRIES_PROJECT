***Settings***
Library  SeleniumLibrary
Resource  Variables.robot

*** Keywords ***
Open and Load
    Open Browser  https://www.wildberries.by  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Sleep  5
User Search
    [Arguments]  ${SEARCH_PRODUCT}
    Wait Until Page Contains Element  css=#tbSrch
    Input Text  css=#tbSrch  ${SEARCH_PRODUCT}
    Click Element  css=#btnSrch
Verify That Search Completed
    Wait Until Page Contains  каталог
    Page Should Contain  каталог
Change The Country Settings
    Mouse Down  css=.change-locale > span:nth-child(1)
    Click Element  css=.change-locale > ul:nth-child(2) > li:nth-child(3) > a:nth-child(2)
Verify That The Country Settings Changed
    Page Should Contain  Нур-Султан
Choose Adress To Delivery
    Click Element  css=.geocity
    Wait Until Page Contains Element  css=.geocity-poo-link
    Click Element  css=.geocity-poo-link
    wait Until Page Contains Element  css=div.item-pickup:nth-child(2) > div:nth-child(1)
    Click element  css=div.item-pickup:nth-child(2) > div:nth-child(1)
Get Code
    Click Element  css=.offline
    Wait Until Page Contains Element  css=#phoneMobile
    Input Text  css=#phoneMobile  ${USER_NUMBER_PHONE}
    Click Element  css=button.c-btn-main-lg-v1:nth-child(1)
Add Product To Card
    Wait Until page Contains Element  css=#c6020540
    Click Element  css=#c6020540
    Wait Until Page Contains Element  css=.cart-btn-wrap
    Click Element  css=.cart-btn-wrap
Verify That Product Added To The Card
    [Arguments]  ${BASKET_CONTAIN}
    Wait Until page Contains Element  css=.my-basket
    Click Element  css=.my-basket
    Wait Until Page Contains  ${BASkET_CONTAIN}
    Page Should Contain  ${BASkET_CONTAIN}
User Choose The Product Size
    Wait Until Page Contains Element  css=.j-size
    Click Element  css=.j-size