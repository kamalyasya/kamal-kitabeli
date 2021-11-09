*** Settings ***
Resource                                    ../Frameworks/Routers.robot

*** Variables ***
${text_success_pembayaran_berhasil}         id=textView16
${button_success_ajak_teman}                id=btn_share_order


*** Keywords ***
Verify Payment Success
    Wait Until Element Is Visible       ${text_success_pembayaran_berhasil}
    Element Should Contain Text         ${text_success_pembayaran_berhasil}             Pembayaran Berhasil!