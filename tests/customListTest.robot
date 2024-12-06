#Task 3 - Custom RF library in Python
*** Settings ***

Library    ../resources/CustomLibrary.py

*** Variables ***
@{MY_LIST}    item1    item2    item3    item4


*** Test Cases ***
Modify and Print List
    ${modified_list}=    Modify List   ${MY_LIST}   /test/123/    ${EMPTY}
    Log    The modified list is ${modified_list}
