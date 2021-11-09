*** Settings ***
Resource            Configs.robot

Library             AppiumLibrary           ${DEFAULT_TIMEOUT}
Library             OperatingSystem
Library             String

### Import Resource ###
# Frameworks


# Pages
Resource            ../Pages/Cart.robot
Resource            ../Pages/CheckoutPage.robot
Resource            ../Pages/Common.robot
Resource            ../Pages/Home.robot
Resource            ../Pages/LoginPage.robot
Resource            ../Pages/SuccessPage.robot
Resource            ../Pages/WelcomePage.robot