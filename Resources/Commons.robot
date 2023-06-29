*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Load Browser
    open browser    https://www.amazon.ca/     chrome
End Test
    close browser
Insert data
    log    I am inserting some data before running test cases.
Clean up data
    log     Cleanup data after running the test cases.

