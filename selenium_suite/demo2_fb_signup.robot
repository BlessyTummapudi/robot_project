*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser   url=https://www.facebook.com/   browser=chrome
    Maximize Browser Window
    Click Element    link=Create New Account
    Set Selenium Implicit Wait    5s
    Input Text    name=firstname    blessy
    Input Text    name=lastname    T
    Input Text    name=reg_email__    blessy@gmail.com
    Input Text   name=reg_email_confirmation__    blessy@gmail.com
    Input Text    id=password_step_input    blessy123

    #13 Feb 2001
    #select from list by label using xpath(if id and name is not available)

    Select From List By Label    xpath=//select[@title='Day']     13
    Select From List By Label    id=month   Feb
    Select From List By Label    id=year     2001
    Click Element    xpath=//input[@value='-1']
    Select From List By label    name=preferred_pronoun       They: "Wish them a happy birthday!"
    Click Element    name=websubmit

