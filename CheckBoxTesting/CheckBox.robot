*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    file:///C:/Users/Jozef/Dropbox/Robot%20framework%20nov%C3%BD%20z%C3%A1%C4%8Diatok%2020.10.2020/Robot%20Framework%20github/RobotFrameworkTestingBasics/Simple%20webpages%20for%20testing/CheckBox.htm    chrome
    Select Checkbox    name:option1
