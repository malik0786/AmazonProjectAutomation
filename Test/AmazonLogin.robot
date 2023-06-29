*** Settings ***
Documentation    Basic Test cases
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/AmazonKeywords.robot
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/Commons.robot
Suite Setup     Insert data
Test Setup      Load Browser
Test Teardown    End Test
Suite Teardown    Clean up data


*** Test Cases ***
User can Search for Products on Amazon
    [Documentation]    Getting started with Amazon Login
    [Tags]              Smoke
    set selenium speed    .2s
    set selenium timeout    10s

    log    Starting login into Amazon
    AmazonKeywords.Begin Test
    AmazonKeywords.Search for Product

User can add the products to Cart
    AmazonKeywords.Begin Test
    AmazonKeywords.Search for Product
    AmazonKeywords.Click on Selected Product
    AmazonKeywords.Add to Cart

