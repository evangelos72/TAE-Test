#Task 2 - Video
*** Settings ***
Resource          ../resources/common.resource
Resource          ../pages/videoPage.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Video Test
    [Documentation]    This test is for Task 2 - Video
    common.Begin Test                          ${VIDEO_URL}                 
    common.Verify Element Text                 ${HEADER}                   ${VIDEO_EXPECTED_HEADER_TEXT}    
    common.Verify Element Text                 ${PUBLICATION_DATE}         ${VIDEO_EXPECTED_PUBLICATION_DATE_TEXT}           
    common.Click Button                        ${VIDEO_PLAY_BUTTON}        1
    videoPage.Verify The Video Plays
    common.Hover Over Element                  ${VIDEO_PAUSE_BUTTON}       
    videoPage.Verify The Video Is Paused
    common.End Test