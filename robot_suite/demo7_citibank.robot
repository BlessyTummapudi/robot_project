*** Settings ***
Library  SeleniumLibrary
Library    Process

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@title='Close']
    Click Element    xpath=//span[text()='Login']
    Switch Window    Citibank India
    Click Element    xpath=//div[contains(text(),'Forgot User ID?')]
    Click Element    link=select your product type
    Click Element    link=Credit Card
    Input Text    name=citiCard1    4545
    Input Text    name=citiCard2    5656
    Input Text    name=citiCard3    8887
    Input Text    name=citiCard4    9998
    Input Text    id=cvvnumber    123
    Click Element    xpath=//input[@id='bill-date-long']
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label    xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element    link=14
    Click Element    xpath=//input[@type='button']
    Element Should Contain     xpath=//*[contains(text(),'• Please accept Terms and Conditions ')]     Please accept Terms and Conditions
    Switch Window  MAIN
    Close Window
    Sleep   1s
    Close Browser