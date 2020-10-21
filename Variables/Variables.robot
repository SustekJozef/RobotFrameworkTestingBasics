*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            file:///C:/Users/Jozef/Dropbox/Robot%20framework%20nov%C3%BD%20z%C3%A1%C4%8Diatok%2020.10.2020/Robot%20Framework%20github/RobotFrameworkTestingBasics/Simple%20webpages%20for%20testing/LoginPage.htm    # Login page for testing.
${loginName}      admin@gmail.com    # Login name for succes login.
@{LOGIN_DETAILS}    admin@gmail.com    admin    # Login and password data in List variable.
&{LOGIN_VARIABLES}    emailid=admin@gmail.com    password=admin    # Login and password data in Dictionary variable

*** Test Cases ***
TC1
    [Documentation]    NOT working properly. Input text to the id:email is not working properly, because it writed different values how it is suppose to. Probably bug.
    Open Browser    ${url}    chrome
    Input Text    id:email    ${loginName}
    Input Text    id:passwd    admin
    Click Button    id:btnsubmit

TC2ListVariable
    [Documentation]    NOT working properly. Input text to the id:email is not working properly, because it writed different values how it is suppose to. Probably bug.
    Open Browser    ${url}    chrome
    Input Text    id:email    ${LOGIN_DETAILS}[0]
    Input Text    id:passwd    ${LOGIN_DETAILS}[1]
    Click Button    id:btnsubmit

TC3DictionaryVariables
    [Documentation]    NOT working properly. Input text to the id:email is not working properly, because it writed different values how it is suppose to. Probably bug.
    Open Browser    ${url}    chrome
    Input Text    id:email    ${LOGIN_VARIABLES}[emailid]
    Input Text    id:passwd    ${LOGIN_VARIABLES}[password]
    Click Button    id:btnsubmit
