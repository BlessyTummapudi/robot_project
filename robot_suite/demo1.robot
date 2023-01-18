*** Settings ***
Library  DateTime
Library    OperatingSystem

*** Test Cases ***
TC1
  Log To Console    message=Blsy
  Log To Console    HI!!

TC2
   ${my_name}  Set Variable  Blsy
   Log To Console     ${my_name}

TC3
   ${current_date}   Get Current Date
   Log To Console    ${current_date}
TC4
   ${r}   Set Variable   10
   ${area_circle}   Evaluate   3.14*${r}*${r}
   Log To Console    ${area_circle}
   Create Directory



