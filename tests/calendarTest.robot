#(Optional) Task 5 – Calendar
*** Settings ***
Resource          ../resources/common.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Calendar Test
    [Documentation]    This test is for Task 5 - Calendar
    common.Begin Test                ${CALENDAR_URL}             
    common.Click Button              ${CALENDAR}                1    
    common.Click Button              ${CALENDAR_LEFT_BUTTON}    ${CALENDAR_CLICK_TIMES}
    common.Click Button              ${CALENDAR_DATE}           1
    common.Verify Element Text       ${CALENDAR_HEADER}         ${CALENDAR_EXPECTED_HEADER_TEXT}
    common.End Test