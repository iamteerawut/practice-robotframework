*** Settings ***
Resource    ../robotframework/supports/1-getting-started/common_resources.resource
Test Setup    example to-do app with a checked task
Test Teardown    Close Browser

*** Test Cases ***
can filter for uncompleted tasks
    Click Element    (//*[contains(text(), "Active")])
    ${COUNT} =    Get Element Count    (//ul[@class="todo-list"]//li)
    Should Be True    ${COUNT} == 1
    Element Text Should Be    (//ul[@class="todo-list"]//li[1])    Walk the dog
    Page Should Not Contain    Pay electric bill

can filter for completed tasks
    Click Element    (//*[contains(text(), "Completed")])
    ${COUNT} =    Get Element Count    (//ul[@class="todo-list"]//li)
    Should Be True    ${COUNT} == 1
    Element Text Should Be    (//ul[@class="todo-list"]//li[1])    Pay electric bill
    Page Should Not Contain    Walk the dog

can delete all completed tasks
    Click Element    (//*[contains(text(), "Clear completed")])
    ${COUNT} =    Get Element Count    (//ul[@class="todo-list"]//li)
    Should Be True    ${COUNT} == 1
    Element Text Should Not Be    (//ul[@class="todo-list"]//li[1])    Pay electric bill
    Page Should Not Contain    Clear completed
