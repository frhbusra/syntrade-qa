#SU10 - Entering password with more than 8 characters in length and has 1 upper case letter, 1 lower case letter and 1 numeric character

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${password_error}    //*[@id="password_error"]

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com

Input An Invalid Password
    Input Text    password    Abcd1234!
    Press Keys    None    ENTER
    Wait Until Element Is Not Visible   password_error    5