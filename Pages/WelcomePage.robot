*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***
${button_welcome_berikutnya}                id=bt_next_skip

*** Keywords ***
Skip Welcome Page
    Wait Until Element Is Visible           ${button_welcome_berikutnya}
    Click Element                           ${button_welcome_berikutnya}
    Wait Until Element Is Visible           ${button_welcome_berikutnya}
    Click Element                           ${button_welcome_berikutnya}
    Wait Until Element Is Visible           ${button_welcome_berikutnya}
    Click Element                           ${button_welcome_berikutnya}
    Wait Until Element Is Visible           ${button_welcome_berikutnya}
    Click Element                           ${button_welcome_berikutnya}

