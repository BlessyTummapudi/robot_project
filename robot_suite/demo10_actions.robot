*** Settings ***
Library  SeleniumLibrary
Library    Process

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://nasscom.in
    #Click Element    link=Membership
    Mouse Over    link=Membership
    Mouse Over    link=Become a Member
    Click Element    link=Membership Benefits

    Click Element    link=CLICK TO APPLY ONLINE
    Input Text    id=edit-field-company-profile-0-value    L&T
    Click Element    id=calculate-fee
    ${a}  Handle Alert   action=ACCEPT   timeout=10s
    Log To Console    ${a}
    Should Be Equal    ${a}    Please enter the total revenue greater than ZERO.