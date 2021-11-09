*** Settings ***
Resource                ../Frameworks/Routers.robot

*** Variables ***


*** Keywords ***
Open Kitabeli App
    Open Application        ${HOST}     platformName=${PLATFORM_NAME}       platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}       appPackage=${APP_PACKAGE}       appActivity=${APP_ACTIVITY}     noReset=True
