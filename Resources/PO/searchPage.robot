*** Settings ***
Library  Selenium2Library


*** Keywords ***
Enter the text in Search Bar
    input text    id=twotabsearchtextbox    ferrari 458
Click on Search button
    click button    xpath=//*[@id="nav-search-submit-button"]
Wait till the Page loads
    wait until page contains    results for "ferrari 458"
