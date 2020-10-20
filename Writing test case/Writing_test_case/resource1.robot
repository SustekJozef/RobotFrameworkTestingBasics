*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Test browser
    [Arguments]    ${url}    ${webDriver}    # a specifi ulr address \ | \ #a specific webDriver
    [Documentation]    Uploaded resource from a file .robot. Opens specific webpage with specific browser and maximizes it.
    Open Browser    ${url}    ${webDriver}
    Maximize Browser Window
