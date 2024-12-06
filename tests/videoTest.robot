#Task 2 - Video
*** Settings ***
Resource          ../resources/common.resource
Resource          ../pages/videoPage.resource
Variables         ../resources/test-data.py


*** Test Cases *** 
Video Test
    [Documentation]    This test is for Task 2 - Video
    common.Begin Test                 ${VIDEO_URL}                 
    common.Verify Header Text         ${HEADER}                    ${VIDEO_HEADER}    
    common.Verify Publication Date    ${VIDEO_PUBLICATION_DATE}    
    videoPage.Wait For Video Player To Load
    videoPage.Click Video Player
    videoPage.Verify The Video Plays
    videoPage.Pause The Video
    common.End Test