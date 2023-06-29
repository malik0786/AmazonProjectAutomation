*** Settings ***
Library    Selenium2Library

*** Keywords ***
End Test
    close browser
Insert data
    log    I am inserting some data before running test cases.
Clean up data
    log     Cleanup data after running the test cases.

