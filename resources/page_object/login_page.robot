*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/login_locator.py

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Keywords ***
go to login page
    Open Browser    ${url}    chrome
    Set Selenium Implicit Wait    10

check text Login title
    Element Should Contain    ${loginText}    Login

check username textbox
    Element Should Be Enabled    ${unameField}

check password textbox
    Element Should Be Enabled    ${pwdField}

check login button
    Element Should Be Enabled   ${loginBtn}

check forgot password link
    Element Should Contain    ${forgotPwdLink}    Forgot your password?

input username
    [Arguments]    ${usr}
    Input Text    ${unameField}    ${usr}

input password
    [Arguments]    ${pwd}
    Input Text    ${pwdField}    ${pwd}

click login
    Click Button    ${loginBtn}
    
dashboard page will be appeared
    Element Should Contain    ${dashboardPage}    Dashboard

error warning appeared
    Element Should Contain    ${requiredErr}    Required

error message appeared
    Element Should Be Visible    ${wrongData}

