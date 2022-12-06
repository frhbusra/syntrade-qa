#TC05 - Entering a valid email and empty password

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${password_error}    //*[@id="password_error"]
${invalid_email_msg}    //*[@id="invalid_email_msg"]

*** Test Cases ***
Open Syntrade Login Page
    Open Browser    https://app.syntrade.xyz/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="login_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com
    Press Keys    None    ENTER
    Element Should Not Be Visible    invalid_email_msg

Let The Password Empty
    Press Keys    None    ENTER
    Element Should Be Visible    password_error