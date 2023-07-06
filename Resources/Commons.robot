*** Settings ***
Library    Selenium2Library

*** Variables ***
${GLOBAL_VARIABLE} =  declared global variable

*** Keywords ***
End Test
    close browser
Insert data
    log    I am inserting some data before running test cases.
Clean up data
    log     Cleanup data after running the test cases.

