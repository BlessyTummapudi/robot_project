
*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1
  [Documentation]     Working with native app
    ...     for automating sign up activity
    &{dic}  Create Dictionary   buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=blessytummapudi_0pqagO
    ...     accessKey=xoRUuem3mYpzbKcdAyJF

    Open Application     remote_url=http://hub.browserstack.com/wd/hub
#    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://58edcc34117125f974ff0d1be9347172c5eff291
    ...     platformVersion=9.0
    ...     bstack:options=${dic}
 #working with native app

   Set Appium Timeout    30s

   Run Keyword And Ignore Error       Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
   Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")

   Wait Until Page Contains Element    android=UiSelector().description("Settings")
   Click Element       android=UiSelector().description("Settings")

   Wait Until Page Contains Element    android=UiSelector().textContains("Sign in")    30s
   Click Element    android=UiSelector().textContains("Sign in")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")
    Click Element    android=UiSelector().textContains("Sign up with email")

    Wait Until Page Contains Element    android=UiSelector().textContains("First name")
    Input Text     android=UiSelector().textContains("First name")    Blessy

    Wait Until Page Contains Element    android=UiSelector().textContains("Last name")
    Input Text     android=UiSelector().textContains("Last name")    T
    Wait Until Page Contains Element        android=UiSelector().textContains("Birthday")
     Click Element    android=UiSelector().textContains("Birthday")

    Click Element     xpath=UiSelector().resourceId("android:id/numberpicker_input")
    Clear Text    xpath=UiSelector().resourceId("android:id/numberpicker_input")
    Input Text     xpath=UiSelector().resourceId("android:id/numberpicker_input")     Dec

    Click Element     xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text    xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text     xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    23

    Click Element     xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text    xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text     xpath=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     2001

    [Teardown]  Close Application

