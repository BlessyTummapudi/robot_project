*** Settings ***
Library    AppiumLibrary
*** Test Cases ***
TC1
    &{dic}  Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=blessytummapudi_g23OhT
    ...     accessKey=hapgkPCtxBZ7eVaHNoFS

  # Log
   Open Application     remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://01058a26ad86312dafac7d86f0bda1d7f21d3d3f
    ...      platformVersion=9.0
    ...    bstack:options=${dic}

    Wait Until Page Contains Element      xpath=//*[@text='Dismiss']
    Click Element      xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element       xpath=//android.widget.TextView[@text='Sign in']
    sleep   5s
    [Teardown]      Close Application






    #tagname=android.widget.TextView
    #Text=Dismiss



