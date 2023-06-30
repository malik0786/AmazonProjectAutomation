*** Settings ***
Documentation    Basic Test cases
Library         Selenium2Library
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/AmazonKeywords.robot
Resource    /Users/ashishmalik/Automation Development/robot-scripts/AmazonProject/Resources/Commons.robot
Suite Setup     Insert data
Test Setup      Begin Test
Test Teardown    End Test
Suite Teardown    Clean up data

*** Variables ***
@{LIST_VARIABLES} =  List1  List2   List3

*** Test Cases ***
Variable Demostration
    [Tags]      demo1
    log     ${LIST_VARIABLES}[0]
    log     ${LIST_VARIABLES}[1]
    log     ${LIST_VARIABLES}[2]


Variable Demostration 2
    [Tags]  VariableDemostration2
    @{new_list_variables} =  create list  list3    list4   list5
    log   ${new_list_variables}[0]
    log   ${new_list_variables}[1]
    log   ${new_list_variables}[2]

User can Search for Products on Amazon
    [Documentation]    Getting started with Amazon Login
    [Tags]              Smoke
    set selenium speed    .2s
    set selenium timeout    10s
    ${my_new _variable} =  set variable  this is my new variable.

    log    Starting login into Amazon

User can add the products to Cart
    AmazonKeywords.Search for Product
    AmazonKeywords.Click on Selected Product
    AmazonKeywords.Add to Cart

