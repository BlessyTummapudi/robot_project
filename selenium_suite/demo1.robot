*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
   Open Browser   url=https://www.google.com/   browser=chrome
   ${a}   Get Title
   Log To Console    ${a}
   Log    ${a}
   Should Be Equal    ${a}    Google

TC2
   Open Browser   url=https://www.facebook.com/   browser=chrome
   Input Text    locator=id:email    text=hello@gmail.com
   Input Password    id:pass    welcome@123
   #click on login
   Click Element    name:login

TC3
    Open Browser  url=https://www.db4free.net/phpMyAdmin/   browser=chrome
    Input Text    id=input_username    hi123
    Input Password    id=input_password    welcome@123
    Click Element    id=input_go



