*** Settings ***
Library    SeleniumLibrary
# Library    CustomLibrary.py

*** Variables ***
${HOST_URL}    https://example.cypress.io/todo
${BROWSER}    Edge

*** Keywords ***
example to-do app
    Open Browser    ${HOST_URL}    ${BROWSER}

example to-do app with a checked task
    Open Browser    ${HOST_URL}    ${BROWSER}
    with a checked task

with a checked task
    Select Checkbox    (//*[contains(text(), "Pay electric bill")]/../input[@type="checkbox"])
