#Task 4 – MaterialUI Autocomplete component
#In order to get inspect the combo box values i used developer tools and pause the debugger once the combo box value i need was visible 
#Example -> setTimeout(function(){debugger;},5000) 

*** Settings ***
Resource          ../resources/common.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Autocomplete Test
    [Documentation]    This is the test for task 4
    common.Begin Test                   ${AUTOCOMPLETE_URL}
    common.Input Custom Text            ${AUTOCOMPLETE_COMBO_BOX}          ${AUTOCOMPLETE_TEXT}
    common.Click Button                 ${AUTOCOMPLETE_SELECTION_VALUE}    1
    common.Compare Element Values       ${AUTOCOMPLETE_COMBO_BOX}          ${AUTOCOMPLETE_EXPECTED_TEXT}
    common.Click Button                 ${AUTOCOMPLETE_CLEAR_BUTTON}       1
    common.Compare Element Values       ${AUTOCOMPLETE_COMBO_BOX}          ${EMPTY}
    common.End Test
