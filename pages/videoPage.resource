*** Settings ***
Library        SeleniumLibrary
Variables      ../resources/test-data.py

*** Keywords ***
Verify The Video Plays
    [Documentation]    Verify that the video plays by checking that the pause button is enabled
    #Just adding some sleep for demonstration purpose to show that the video is playing
    Sleep                                5s
    Wait Until Element Is Enabled        ${VIDEO_PAUSE_BUTTON}

Verify The Video Is Paused
    [Documentation]    Verify that the video is paused by clicking the pause button, verifying that the pause button is no longer visible and the play button is visible
    Click Element                        ${VIDEO_PAUSE_BUTTON}
    Wait Until Element Is Not Visible    ${VIDEO_PAUSE_BUTTON}
    Wait Until Element Is Enabled        ${VIDEO_SMALL_PLAY_BUTTON}