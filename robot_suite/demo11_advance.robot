*** Settings ***
Library  SeleniumLibrary
Library    Process

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']   C:${/}Users${/}40032486${/}Downloads${/}PDF to WORD _ Convert PDF to Word online for free.pdf
    #Choose File    css=input[type='file']    C:${/}Users${/}40032486${/}Downloads${/}PDF to WORD _ Convert PDF to Word online for free.pdf

TC2 Javascript
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To   url=https://www.phptravels.net/
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    Execute Javascript  document.querySelector('#checkout').value='29-11-2023'
    Click Element    id=select2-hotels_city-container
    Input Text    class=select2-search__field    vadodara
    Click Element    xpath=//span[@text()='Vadodara,India']

TC3
        Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://nasscom.in
    #Click Element    link=Membership
    Mouse Over    link=Membership
    ${element}   Get WebElement    link=Become a Member
    Execute Javascript  arguments[0].click()   ARGUMENTS    ${element}


