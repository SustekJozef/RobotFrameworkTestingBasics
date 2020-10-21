*** Settings ***
Documentation     Tests possible logins by input different login emails and passwords.
Test Setup        Login Page Display    # Displays new login page for testing.
Test Template     Login Test    # Various invalid emailids and passwords for testing purposses.
Library           SeleniumLibrary

*** Variables ***
${password}       admin    # Valid password for successful log in.
${emailid}        admin@gmail.com    # Valid emailid for successful log in.
${loginpage}      file:///C:/Users/Jozef/Dropbox/Robot%20framework%20nov%C3%BD%20z%C3%A1%C4%8Diatok%2020.10.2020/Robot%20Framework%20github/RobotFrameworkTestingBasics/Simple%20webpages%20for%20testing/LoginPage.htm    # Testing login page.

*** Test Cases ***
TC1-Invalid Emailid - Valid Password
    [Documentation]    Test invalid log in with used parameters.
    invalidEmail    ${password}

TC2-Valid Emailid - Invalid Password
    [Documentation]    Test invalid log in with used parameters.
    ${emailid}    invalidPassword

TC3-Empty Password - Valid Email
    [Documentation]    Test invalid log in with used parameters.
    ${emailid}    ${EMPTY}

TC4-Empty Emailid - Valid Password
    [Documentation]    Test invalid log in with used parameters.
    ${EMPTY}    ${password}

TC5-Empty Emailid - Empty Password
    [Documentation]    Test invalid log in with used parameters.
    ${EMPTY}    ${EMPTY}

TC6- Invalid Emailid - Invalid Password
    [Documentation]    Test invalid log in with used parameters.
    invalid    invalid

*** Keywords ***
Login Page Display
    [Documentation]    Disprays / renews main login page for another testing.
    Go To    ${loginpage}

Login Test
    [Arguments]    ${emailid}    ${password}
    [Documentation]    Enters different email´s id and passwords to provide successful or failed login tests.
    Enter Emailid    ${emailid}
    Enter Password    ${password}
    Submit Login
    Login Should Fail

Enter Emailid
    [Arguments]    ${emailid}
    [Documentation]    Enteres emailid to the test.
    Input Text    email    ${emailid}

Enter Password
    [Arguments]    ${password}
    [Documentation]    Enteres emailid to the test.
    Input Text    passwd    ${password}

Submit Login
    [Documentation]    Submits to make login.
    Click Button    btnsubmit

Login Should Fail
    [Documentation]    Test if login fails when were used bad login emailid or password.
    Title Should Be    Login Failed
