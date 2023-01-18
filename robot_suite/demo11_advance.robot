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
