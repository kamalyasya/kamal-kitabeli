*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***
${field_login_phonenumber}                  id=et_number
${button_login_masuk}                       id=bt_login

*** Keywords ***
Login Using Credentials
    [Arguments]     ${PHONENUMBER}
    Wait Until Element Is Visible           ${field_login_phonenumber}
    Input Text                              ${field_login_phonenumber}              ${PHONENUMBER}
    Wait Until Element Is Visible           ${button_login_masuk}
    Click Element                           ${button_login_masuk}
