*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***
${button_home_cart}                         id=ic_cart
${button_home_makanan}                      xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.LinearLayout[1]/android.widget.ImageView
${card_product_1}                           xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView[2]/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.ImageView[1]
${button_product_add_to_cart}               id=bt_add_to_cart


*** Keywords ***
Add To Cart Product
    Wait Until Element Is Visible           ${button_home_makanan}
    Click Element                           ${button_home_makanan}
    Run Keyword And Ignore Error            Wait Until Element Is Visible           id=tv_skip
    Run Keyword And Ignore Error            Click Element                           id=tv_skip
    Wait Until Element Is Visible           ${card_product_1}
    Click Element                           ${card_product_1}
    Wait Until Element Is Visible           ${button_product_add_to_cart}
    Click Element                           ${button_product_add_to_cart}

Open Cart
    Wait Until Element Is Visible           ${button_home_cart}
    Click Element                           ${button_home_cart}