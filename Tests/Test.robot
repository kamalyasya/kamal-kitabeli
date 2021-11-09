*** Settings ***
Resource                        ../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}

*** Variables ***

*** Test Cases ***
User Checkout
    [Documentation]  UI Verification from the search page
    [Tags]           Regression  Smoke

    Open Kitabeli App
#    sleep  5
#    Press Keycode             4
#    sleep  5

#    Skip Welcome Page
#    Login Using Credentials
    Add To Cart Product
    Open Cart
    Click Button Bayar
    Add Address                     Kamal               81297189756         Perum Royal Platinum RT01/RW01
    Click Button Buat Pesanan
    Verify Payment Success