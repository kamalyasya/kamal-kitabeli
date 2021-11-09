*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***
${button_cart_bayar}                        id=bt_buy

*** Keywords ***
Click Button Bayar
    Wait Until Element Is Visible           ${button_cart_bayar}
    Click Element                           ${button_cart_bayar}