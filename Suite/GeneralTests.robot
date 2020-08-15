*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Test Cases ***
Open and load page
    Open and Load
User change the country settings
    Load Page And Maximize Browser Window
    Change The Country Settings
    Set Browser Implicit Wait  5
    Close Browser
Verify that the country settings changed
    Load Page And Maximize Browser Window
    Change The Country Settings
    Set Browser Implicit Wait  5
    Verify That The Country Settings Changed
    Close Browser
User choose adress to delivery
    Load Page And Maximize Browser Window
    Choose Adress To Delivery
    Close Browser
User get a unique code to create account
    Load Page And Maximize Browser Window
    Get Code
    Close Browser
User get a unigue code to sign in to account
    Load Page And Maximize Browser Window
    Maximize Browser Window
    Get Code
    Close Browser

    

        

