*** Settings ***
Library           SeleniumLibrary
Resource          resource1.robot

*** Variables ***
${number}         100

*** Test Cases ***
TC1
    [Documentation]    Simple test of opening browser with specific webpage and follow-up by closing browser. Used user-defined keyword.
    TestBrowser    https://www.tutorialspoint.com/robot_framework/robot_framework_writing_and_executing_test_cases.htm    chrome
    Close Browser

TC2
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable if    ${number}>0    Yes    No
    Log    ${b}

TC3
    [Documentation]    Simple test of opening browser with specific webpage and follow-up by closing browser. Used resources.
    Test browser    https://google.com/    chrome
    Close Browser

*** Keywords ***
TestBrowser
    [Arguments]    ${url}    ${webdriver}    # webside to open \ | \ # needed webdriver
    [Documentation]    User-defined keyword with 2 arguments. Opens a webpage with specific browser and maximize it.
    Open Browser    ${url}    ${webdriver}
    Maximize Browser Window
