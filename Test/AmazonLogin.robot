*** Settings ***
Documentation    Basic Test cases
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/AmazonKeywords.robot
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/Commons.robot

*** Test Cases ***
Sample Test Cases
    [Documentation]    Getting started with Amazon Login
    [Tags]              Smoke
    set selenium speed    .2s
    set selenium timeout    10s

    log    Starting login into Amazon
    Commons.Load Browser
    AmazonKeywords.Begin Test
    AmazonKeywords.Search for Product
    AmazonKeywords.Click on Selected Product
    AmazonKeywords.Add to Cart
    Commons.End Test

