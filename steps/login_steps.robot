*** Settings ***
Resource    ../resources/page_object/login_page.robot

*** Keywords ***
I am on login page
    go to login page
    check text Login title
    check username textbox
    check password textbox
    check login button
    check forgot password link

I input username
    [Arguments]    ${usr}
    input username    ${usr}

I input password
    [Arguments]    ${pwd}
    input password    ${pwd}

Click login button
    click login

I click login button
    go to login page
    click login

I should go to Dashboard Page
    dashboard page will be appeared

Website raising required field
    error warning appeared

Error message will be appeared
    error message appeared