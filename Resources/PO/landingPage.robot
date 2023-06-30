*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL_NAME} =  https://www.amazon.ca/
${BROWSER_NAME} =  chrome
${WAITING_PAGE} =  amazon.ca

*** Keywords ***
Load
    open browser    ${URL_NAME}     ${BROWSER_NAME}
Verify Page loads
    wait until page contains    ${WAITING_PAGE}


