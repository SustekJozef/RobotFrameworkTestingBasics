*** Settings ***
Documentation     Simple test with 1 user-defined keyword.

*** Test Cases ***
TC1
    [Documentation]    Simple test based on displaying of the message.
    Display Message    Hello world

*** Keywords ***
Display Message
    [Arguments]    ${msg}    # Message to display.
    [Documentation]    User-defined keywords for displaing a message.
    Log    ${msg}
