*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    [Documentation]    Tests: input text in the textbox field and click a search button to find results.
    Open Browser    https://www.tutorialspoint.com/index.htm    chrome
    Input Text    id=gsc-i-id1    Java
    Click Element    class=gsc-search-button
