*** Settings ***
Library    Collections
Library    OperatingSystem
*** Variables ***
${BROWSER_NAME}     chrome
@{COLORS}   Black     Green       White
${MY_NAME}  Blessy
&{Details}  name=blsy   key=1411  num=9666666
*** Test Cases ***
TC1
    ${my_name}  Set Variable   Blsy
    Log To Console    ${my_name}
TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}[1]
    @{fruits}   Create List  apple   orange  mango
    Log To Console    ${fruits}
    Append To List    ${fruits}     grapes
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    1    pineapple
    Log To Console    ${fruits}
    ${count}  Get Length    ${fruits}
    Log To Console    ${count}
    Log To Console    ${fruits}

TC3
   @{fruits}   Create List   orange  mango   apple   pineapple
   FOR    ${i}    IN RANGE    0    4
       Log To Console    ${fruits}[${i}]
   END
TC4
    Log To Console    ${Details}[name]
    &{emp_dic}      Create Dictionary   id=12   name=paul  
    Log To Console    ${emp_dic}[name]




