*** Settings ***
Resource    ../steps/login_steps.robot

*** Test Cases ***
As a user I should be able to login with username and password
    Given I am on login page
    When I input username    Admin
    And I input password    admin123
    And Click login button
    Then I should go to Dashboard Page

As a user I should not be able to login because username and password is empty
    Given I am on login page
    When I click login button
    Then Website raising required field

As a user I should not be able to login because username and password is wrong
    [Template]    As a user I should not be able to login because username and password is wrong

    salah      123
    admin    123
    salah    admin123


*** Keywords ***
As a user I should not be able to login because username and password is wrong
    [Arguments]    ${usr}    ${pwd}
    Given I am on login page
    When I input username    ${usr}
    And I input password    ${pwd}
    And Click Login button
    Then Error message will be appeared