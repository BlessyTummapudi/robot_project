*** Settings ***
Library      AppiumLibrary

*** Test Cases ***
TC1 Sign Up
    [Documentation]     Working with native app
    ...     for automating sign up activity
    &{dic}  Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=blsyt_xVcsl2
    ...     accessKey=7LYJRNVShceWjKQEtSGz

    Open Application     remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://16f8ef7c3857c558a647baa039794a8410b3b4b6
    ...     platformVersion=9.0
    ...     bstack:options=${dic}

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']
    
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
    Click Element   xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element   xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}  Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90  75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']

    ${count}  Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count}==0
        Swipe By Percent    90  85    90    15
        ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']

    ${count}  Get Matching Xpath Count    xpath=//*[contains(@text,'Taj')]
    WHILE    ${count}==0
        Swipe By Percent    90  85    90    15
         ${count}    Get Matching Xpath Count    xpath=//*[contains(@text,'Taj')]
    END
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Taj')]
    Click Element    xpath=//*[contains(@text,'Taj')]

    Wait Until Page Contains Element    xpath=//*[contains(@text,'fifth ruler')]
    Element Should Contain Text   xpath=//*[contains(@text,'fifth ruler')]      Shah Jahan
    [Teardown]      Close Application

TC2
    [Documentation]     Working with native app
    ...     for automating sign up activity
    &{dic}  Create Dictionary   buildName=poshmark lt7
    ...     projectName=poshmark project lt7
    ...     userName=blessytummapudi_0pqagO
    ...     accessKey=xoRUuem3mYpzbKcdAyJF

    Open Application     remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://58edcc34117125f974ff0d1be9347172c5eff291
    ...     platformVersion=9.0
    ...     bstack:options=${dic}

     Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
    Click Element   xpath=//android.widget.Button[@text='Search']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element   xpath=//android.widget.TextView[@text='Arts and humanities']

    &{dic_arg}      Create Dictionary       strategy=android uiautomator
    ...     selector=UiSelector().text("Art of Asia")
    Execute Script    mobile:scroll    &{dic_arg}
    Click Element    android=UiSelector().text("Art of Asia")

     &{dic_arg}      Create Dictionary       strategy=android uiautomator
    ...     selector=UiSelector().text("South Asia")
    Execute Script    mobile:scroll    &{dic_arg}
    Click Element    android=UiSelector().text("South Asia")



    [Teardown]      Close Application







