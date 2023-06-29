*** Settings ***
Library     Selenium2Library

*** Keywords ***
Load
    open browser    https://www.amazon.ca/     chrome
Verify Page loads
    wait until page contains    amazon.ca


