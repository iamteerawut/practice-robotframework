*** Settings ***
Resource    ../robotframework/supports/1-getting-started/common_resources.resource
Test Setup    example to-do app
Test Teardown    Close Browser

*** Test Cases ***
displays two todo items by default
    ${COUNT} =    Get Element Count    (//ul[@class="todo-list"]//li)
    Should Be True    ${COUNT} == 2
    Element Text Should Be    (//ul[@class="todo-list"]//li[1])    Pay electric bill
    Element Text Should Be    (//ul[@class="todo-list"]//li[last()] )   Walk the dog

can add new todo items
    ${NEW_ITEM} =    Set Variable    Feed the cat
    Press Keys    (//input[@data-test="new-todo"])    ${NEW_ITEM}    RETURN
    ${COUNT} =    Get Element Count    (//ul[@class="todo-list"]//li)
    Should Be True    ${COUNT} == 3
    Element Text Should Be    (//ul[@class="todo-list"]//li[last()] )   Feed the cat

can check off an item as completed
    Select Checkbox    (//*[contains(text(), "Pay electric bill")]/../input[@type="checkbox"])
    Element Attribute Value Should Be    (//*[contains(text(), "Pay electric bill")]/../../../li[@class="completed"])    class    completed
