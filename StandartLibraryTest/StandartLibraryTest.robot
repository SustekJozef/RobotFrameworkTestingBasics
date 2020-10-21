*** Variables ***
${number}         100    # Number used for testing.
${name}           Clair    # Name variable for testing.

*** Test Cases ***
TC1
    [Documentation]    Test uses build-in keywords.
    Log    Hello World
    Should Be True    ${number}==100
    ${str1}    Catenate    Hello    World
    Log    ${str1}
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${number}>0    Yes    No
    Log    ${b}
