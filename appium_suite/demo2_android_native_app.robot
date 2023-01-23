*** Settings ***
Library      AppiumLibrary

*** Test Cases ***
TC1 Sign Up
    [Documentation]     Working with native app
    ...     for automating sign up activity
    &{dic}  Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=blessytummapudi_g23OhT
    ...     accessKey=hapgkPCtxBZ7eVaHNoFS

    Open Application     remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://01058a26ad86312dafac7d86f0bda1d7f21d3d3f
    ...      platformVersion=9.0
    ...    bstack:options=${dic}


    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element       xpath=//android.widget.ImageView[@content-desc='Settings']
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='First name']
    Input Text     xpath=//android.widget.EditText[@text='First name']    Blessy

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Last name']
    Input Text     xpath=//android.widget.EditText[@text='Last name']    T

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Birthday']
    Click Element     xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@text='Jun']
    Click Element     xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input]
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input]
    Clear Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input]
    Input Text     xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']    Dec
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Click Element     xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Input Text     xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]     23
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Click Element     xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Wait Until Page Contains Element        xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Input Text     xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]     2001
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='OK']
    Click Element    xpath=//android.widget.Button[@text='OK']
    [Teardown]      Close Application

#    //*[contains(@text,'THANK')]





