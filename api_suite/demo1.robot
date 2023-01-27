*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
TC1 Get Pet
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session    alias=petshop     url=pet/101
    Log    ${response}
    Log    ${response.json()}
    Log    ${response.json()}[id]

    ${expected}    Convert To Integer    101
    Should Be Equal    ${response.json()}[id]    ${expected}
    ${actual}       Convert To String    ${response.json()}[id]
    Should Be Equal    ${actual}    101

    Log To Console    ${response.json()}[name]
    ${actual_1}     Convert To String    ${response.json()}[name]
    Should Be Equal    ${actual_1}    doggie
    Status Should Be    200