*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    
    Open Browser  url=http://demo.openemr.io/b/openemr/   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id:authUser    admin
    Input Text    id:clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id:login-button
    Click Element   xpath=//div[text()='Patient']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    id=form_fname     hello
    Input Text    id=form_lname    T
    Click Element    id=form_DOB
    Input Text    id=form_DOB    24/01/2023
    Select From List By Label    id=form_sex    Female
    Click Element    id=create
    Unselect Frame
    Select Frame    xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@value='Confirm Create New Patient']
    ${a}  Handle Alert   action=ACCEPT   timeout=20s
    Log To Console    ${a}
    Element Should Contain    xpath=//span[text()='hello T']   hello T


TC2
    Open Browser    browser=chrome
    @{output}   Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]

