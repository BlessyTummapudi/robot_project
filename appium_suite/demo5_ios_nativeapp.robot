*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1
    &{dic}  Create Dictionary   buildName=browserstack-build-1
    ...     projectName=First Python project
    ...     userName=bttummapudi_1VwA6Y
    ...     accessKey=wxqdmpEzwhmxFVwUqAzU

    Open Application     remote_url=http://hub.browserstack.com/wd/hub
   ...     platformName=ios
    ...     deviceName=iPhone XS
    ...     app=bs://16b40a5ff0f82e5098650e7f73fb45255202b267
    ...     platformVersion=12
    ...     bstack:options=${dic}

    Set Appium Timeout    10s


    Click Element    xpath=//XCUIElementTypeOther[@name='test-standard_user']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-Cart']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-Cart']
    
     Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']

     Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-First Name']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-First Name']    john

     Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Last Name']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Last Name']    jo

     Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']    100022

     Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Click Element    xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    sleep    10s

    ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Payment Information:"]
    WHILE   ${count}==0
        Swipe By Percent    90    70    90    25
        ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Payment Information:"]
    END
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name="SauceCard #31337"]    SauceCard #31337

    ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Shipping Information:"]
    WHILE   ${count}==0
        Swipe By Percent    90    70    90    25
        ${count}    Get Matching Xpath Count    xpath=//XCUIElementTypeStaticText[@name="Shipping Information:"]
    END
    Element Should Contain Text    xpath=//XCUIElementTypeStaticText[@name="FREE PONY EXPRESS DELIVERY!"]    FREE PONY EXPRESS DELIVERY!
    sleep   10s
    [Teardown]  Close Application