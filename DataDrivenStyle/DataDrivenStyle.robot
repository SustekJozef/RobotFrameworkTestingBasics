*** Test Cases ***
TC1
    [Template]    Display Message    # Takes more arguments - more messages at once.
    My first test case
    Testing template

*** Keywords ***
Display Message
    [Arguments]    ${msg}
    [Documentation]    Displays choosen message.
    Log    ${msg}
