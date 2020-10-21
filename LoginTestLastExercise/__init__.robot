*** Settings ***
Documentation     Login test - successful, unsuccessful login, all variants.
Suite Setup       Open Login Page    ${loginPage}    ${browser}    # Setup for test - opens login page.
Suite Teardown    Close Browser    # Closes browser after all tests.
Library           SeleniumLibrary

*** Variables ***
${loginpage}      file:///C:/Users/Jozef/Dropbox/Robot%20framework%20nov%C3%BD%20z%C3%A1%C4%8Diatok%2020.10.2020/Robot%20Framework%20github/RobotFrameworkTestingBasics/Simple%20webpages%20for%20testing/LoginPage.htm    # Testing login page.
${browser}        chrome    # Name of choosen browser.

*** Keywords ***
Open Login Page
    [Arguments]    ${loginPage}    ${browser}
    Open Browser    ${loginPage}    ${browser}
    Maximize Browser Window
    Title Should Be    Login Page
