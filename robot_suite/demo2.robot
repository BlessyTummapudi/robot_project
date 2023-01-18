*** Settings ***
Library    OperatingSystem
*** Test Cases ***
tc1
   Log To Console  path=C:\\Users\\40032486\\robot_project\\hi
   Log To Console    ${CURDIR}
   Log To Console    ${EXECDIR}
   Log To Console    ${OUTPUT_DIR}
   Log To Console    c:${/}Users${/}40032486${/}robot_project${/}hi
   Log To Console    Hi,${SPACE}World
   Log To Console    ${TEST_NAME}
   Log To Console    ${SUITE_NAME}

 