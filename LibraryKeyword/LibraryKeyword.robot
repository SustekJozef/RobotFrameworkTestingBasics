*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.tutorialspoint.com    chrome
    Maximize Browser Window
    Input Text    name=search    Entered from robotframework
