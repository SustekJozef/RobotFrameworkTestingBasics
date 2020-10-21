*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         databaza_pre_web    # Name of database for testing purposses.
${dbuser}         root    # User name for database for testing purposses.
${dbpasswd}       admin    # Password for database for testing purposses.
${dbhost}         localhost    # Database host value.
${dbport}         3306    # Database port value.
@{queryResults}    # Results of quering.

*** Test Cases ***
TC1
    [Documentation]    Tests connection to database, selection to "clanky" and quering from "clanky".
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    clanky
    Check If Exists In Database    SELECT * FROM clanky
    @{queryResults}    Query    SELECT * FROM clanky
    Log    @{queryResults}[0]
    Disconnect From Database

TC2
    [Documentation]    Tests connection to database, selection to "uzivatele" and quering from "uzivatele".
    Connect To Database    pymysql    ${dbname}
    Table must exist    uzivatele
    Check If Exists In Database    SELECT * FROM uzivatele
    @{queryResults}    Query    SELECT * FROM uzivatele
    Log    @{queryResults}[0]
    Disconnect From Database
