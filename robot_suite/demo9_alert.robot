*** Settings ***
Library  SeleniumLibrary
Library    Process

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    #Click Element    css=img[alt='Go']

    ${alert_text}  Handle Alert   action=ACCEPT
    Log To Console    ${alert_text}
    Should Be Equal   ${alert_text}  Customer ID${Space}${Space}cannot be left blank.
