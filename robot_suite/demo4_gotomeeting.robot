*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.goto.com/meeting/
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    John
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Input Text    xpath=//label[text()='Create Password']    welcome123
