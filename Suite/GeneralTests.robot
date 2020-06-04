***Settings***
Library  SeleniumLibrary
Resource  ../Resources/KeyWords.robot
*** Test Cases ***
Open and Load Page
    Open and Load
User Change The Country Settings
    Open and Load
    Change The Country Settings
    Sleep  3
    Close Browser
Verify That The Country Settings Changed
    Open and Load
    Change The Country Settings
    Sleep  5
    Verify That The Country Settings Changed
    Close Browser
User Choose Adress To Delivery
    Open and Load
    Choose Adress To Delivery
    Close Browser
User Get A Unique Code To Create Account
    Open and Load
    Get Code
    Close Browser
User Get Unigue Code To Sign In to Account
    Open and Load
    Maximize Browser Window
    Get Code
    Close Browser

    

        

