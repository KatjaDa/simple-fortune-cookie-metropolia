*** Settings ***
Library    Browser    auto_closing_level=SUITE

*** Variables ***
${URL}    http://localhost:8080/
${FORTUNE}    Everything is either a bunny or not a bunny.
${SUCCESS}    Cookie added!

*** Test Cases ***
Open Browser To Main Page
    Open Browser To Login Page

All Fortunes Are Visible After Clicking Button
    Sleep    1s
    Click To Get All Fortunes
    Sleep    1s
    See That Fortunes Were Loaded

User Can Add A Fortune
    Add Fortune to Text Field
    Sleep    1s
    Submit Fortune
    Sleep    1s
    See That Cookie Was Added Successfully
    Sleep    1s

Random Cookie Changes
    Click To Get Random
    Verify That Cookie Changes

    
*** Keywords ***
Open Browser To Login Page
    New Browser    headless=${FALSE}
    New Page    ${URL}

Click To Get All Fortunes
    Click    css=button.btn:nth-child(2)

See That Fortunes Were Loaded
    Get Text    id=output    contains     4:


Add Fortune to Text Field
    Fill Text    id=message    ${FORTUNE}

Submit Fortune
    Click    css=input.btn.btn-outline-secondary
See That Cookie Was Added Successfully
    Get Text    id=output    contains     ${SUCCESS}


Click To Get Random
    Click    css=button.btn:nth-child(1)

Verify That Cookie Changes
    No Operation
