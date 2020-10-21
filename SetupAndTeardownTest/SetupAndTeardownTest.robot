*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    [Documentation]    Testing by using simple setup and teardown. It tests inputing text in to the field.
    [Setup]    Open Browser    https://www.tutorialspoint.com    chrome    # Setup to open browser.
    Input Text    name=search    This text is comming from robot
    [Teardown]    Close Browser    # Terdown to close browser.
