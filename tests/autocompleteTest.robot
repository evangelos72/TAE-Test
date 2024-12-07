#Task 4 – MaterialUI Autocomplete component
#In order to be able inspect the 'combo box' element values I used the developer tools and paused the debugger
#Example -> setTimeout(function(){debugger;},5000) 

*** Settings ***
Resource          ../resources/common.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Autocomplete Test
    [Documentation]    This is the test for task 4
    common.Begin Test                         ${AUTOCOMPLETE_URL}
    common.Input Custom Text                  ${AUTOCOMPLETE_COMBO_BOX}          ${AUTOCOMPLETE_INPUT_TEXT}
    common.Click Button                       ${AUTOCOMPLETE_SELECTION_VALUE}    1
    common.Verify Element Values Are Equal    ${AUTOCOMPLETE_COMBO_BOX}          ${AUTOCOMPLETE_EXPECTED_TEXT}
    common.Click Button                       ${AUTOCOMPLETE_CLEAR_BUTTON}       1
    common.Verify Element Values Are Equal    ${AUTOCOMPLETE_COMBO_BOX}          ${EMPTY}
    common.End Test