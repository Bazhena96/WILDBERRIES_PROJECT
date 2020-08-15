*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Open and Load
    Open Browser  https://www.wildberries.by  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Load Page And Maximize Browser Window
    Open and load
    Maximize Browser Window
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
User Search
    [Arguments]  ${product name}
    Wait Until Page Contains Element  css=#tbSrch
    Input Text  css=#tbSrch  ${product name}
    Click Element  css=#btnSrch
Verify That Search Completed
    Wait Until Page Contains  каталог
Change The Country Settings
    Mouse Down  css=.change-locale > span:nth-child(1)
    Click Element  css=.change-locale > ul:nth-child(2) > li:nth-child(3) > a:nth-child(2)
Verify That The Country Settings Changed
    Page Should Contain  Нур-Султан
Choose Adress To Delivery
    Click Element  css=.geocity
    Wait And Click  css=.geocity-poo-link
    Wait And Click  css=div.item-pickup:nth-child(2) > div:nth-child(1)
Get Code
    [Arguments] ${phone number}
    Click Element  css=.offline
    Wait And Click  css=#phoneMobile
    Input Text  css=#phoneMobile  ${phone number}
    Wait And Click  css=button.c-btn-main-lg-v1:nth-child(1)
Add Product To The Cart
    Wait And Click  css=#c6020540
    Wait And Click  css=button.c-btn-main-lg-v1:nth-child(1)
Verify That Product Added To The Cart
    [Arguments]  ${basket contents}
    Wait And Click  css=.my-basket
    Wait Until Page Contains Element   ${basket contents}
User Choosed The Product Size
    Wait And Click  css=.my-basket > span:nth-child(1)
