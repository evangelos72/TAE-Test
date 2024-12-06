*** Settings ***
Library        SeleniumLibrary
Variables      ../resources/test-data.py

*** Keywords ***
Wait For Video Player To Load
    [Documentation]    Click the ${VIDEO_BIG_PLAY_BUTTON} aka the big play button in the middle of the video player
    Wait Until Element Is Visible        ${VIDEO_BIG_PLAY_BUTTON}    timeout=10s

Click Video Player
    [Documentation]    Click the ${VIDEO_SMALL_PLAY_BUTTON} aka the small play button on the left of the video player to start the video
    Click Element                        ${VIDEO_SMALL_PLAY_BUTTON}
    Sleep    5s

Verify The Video Plays
    [Documentation]    Verify that the video plays by checking that the pause button is enabled
    Wait Until Element Is Enabled        ${VIDEO_PAUSE_BUTTON}

Pause The Video
    [Documentation]    Verify that the video is paused by clicking the pause button, verifying that the pause button is no longer visible and the play button is visible
    Click Element                        ${VIDEO_PAUSE_BUTTON}
    Wait Until Element Is Not Visible    ${VIDEO_PAUSE_BUTTON}
    Wait Until Element Is Enabled        ${VIDEO_SMALL_PLAY_BUTTON}
    Sleep    3s
