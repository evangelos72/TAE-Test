#Task 2 - Video
*** Settings ***
Resource          ../resources/common.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Callendar Test
    [Documentation]    This test is for Task 2 - Video
    common.Begin Test                ${CALENDAR_URL}             
    common.Click Button              ${CALLENDAR}                1    
    common.Click Button              ${CALLENDAR_LEFT_BUTTON}    ${CALLENDAR_CLICK_TIMES}
    common.Click Button              ${CALENDAR_DATE}            1
    common.Verify Header Text        ${CALLENDAR_HEADER}         ${CALLENDAR_HEADER_TEXT}
    common.End Test