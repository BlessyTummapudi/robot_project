*** Settings ***
Library  SeleniumLibrary
Library    Process

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']

    Input Text    xpath=//input[@name='fldLoginUserId']    test123
    Click Element    link=CONTINUE

TC2
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.redbus.in
    Click Element    id=i-icon-profile
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    6789
    Element Should Contain    xpath=//span[contains(text(),'valid')]    Please enter valid mobile number
    Unselect Frame
    Close Browser