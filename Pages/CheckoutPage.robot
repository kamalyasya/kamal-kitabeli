*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***
${button_checkout_add_address}              id=tv_address
${button_checkout_buat_pesanan}             id=bt_buy

${field_address_name}                       id=et_name
${field_address_phonenumber}                id=et_number
${field_address_address}                    id=et_address
${dropdown_address_provinsi}                id=s_provinsi
${dropdown_address_provinsi_selected}       xpath=//android.widget.TextView[@text='DKI Jakarta']
${dropdown_address_kota}                    id=s_kota
${dropdown_address_kota_selected}           xpath=//android.widget.TextView[@text='Jakarta Utara']
${dropdown_address_kecamatan}               id=s_kecamatan
${dropdown_address_kecamatan_selected}      xpath=//android.widget.TextView[@text='Penjaringan']
${dropdown_address_kelurahan}               id=s_kelurahan
${dropdown_address_kelurahan_selected}      xpath=//android.widget.TextView[@text='Kamal Muara']
${button_address_simpan}                    id=bt_simpan

*** Keywords ***
Add Address
    [Arguments]     ${NAME}         ${PHONENUMBER}          ${ADDRESS}
    Wait Until Element Is Visible           ${button_checkout_add_address}
    Click Element                           ${button_checkout_add_address}
    Wait Until Element Is Visible           id=ic_add
    Click Element                           id=ic_add
    Wait Until Element Is Visible           ${field_address_name}
    Input Text                              ${field_address_name}                   ${NAME}
    Wait Until Element Is Visible           ${field_address_phonenumber}
    Input Text                              ${field_address_phonenumber}            ${PHONENUMBER}
    Wait Until Element Is Visible           ${field_address_address}
    Input Text                              ${field_address_address}                ${ADDRESS}
    Click Element                           ${dropdown_address_provinsi}
    Wait Until Element Is Visible           ${dropdown_address_provinsi_selected}
    Click Element                           ${dropdown_address_provinsi_selected}
    Click Element                           ${dropdown_address_kota}
    Wait Until Element Is Visible           ${dropdown_address_kota_selected}
    Click Element                           ${dropdown_address_kota_selected}
    Click Element                           ${dropdown_address_kecamatan}
    Wait Until Element Is Visible           ${dropdown_address_kecamatan_selected}
    Click Element                           ${dropdown_address_kecamatan_selected}
    Click Element                           ${dropdown_address_kelurahan}
    Wait Until Element Is Visible           ${dropdown_address_kelurahan_selected}
    Click Element                           ${dropdown_address_kelurahan_selected}
    Click Element                           ${button_address_simpan}
    Sleep   3
    Wait Until Element Is Visible           xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
    Click Element                           xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
#    Press Keycode             4


Click Button Buat Pesanan
    Wait Until Element Is Visible           ${button_checkout_buat_pesanan}
    Click Element                           ${button_checkout_buat_pesanan}