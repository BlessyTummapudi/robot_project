*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    #click on php admin
    Click Element    xpath=//a[@target='_blank']
    Switch Window  phpMyAdmin
    Input Text    id=input_username    test123
    Close Browser