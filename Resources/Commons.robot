*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Load Browser
    open browser    about:blank     chrome
End Test
    close browser