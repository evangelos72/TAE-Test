*** Settings ***
Library        SeleniumLibrary
Variables      test-data.py

*** Keywords ***
Begin Test
    [Documentation]    Opens the browser and navigates to ${url} with maximized browser window
    [Arguments]    ${url}
    Open Browser                         ${url}               ${BROWSER}
    Maximize Browser Window

End Test
    [Documentation]    Closes the browser
    Close Browser

Click Button
    [Documentation]    Click the button identified by ${locator} ${click_times} times.
    [Arguments]        ${locator}    ${click_times}
    FOR    ${index}    IN RANGE    ${click_times}
        Wait Until Element Is Visible    ${locator}          timeout=10s
        Wait Until Element Is Enabled    ${locator}
        Click Element                    ${locator}
        Sleep                            0.5S
    END

Verify Header Text
    [Documentation]    Verify that the header identified by ${locator} contains the expected text ${expected_text}.
    [Arguments]        ${locator}    ${expected_text}
    Wait Until Element Is Visible        ${locator}
    ${actual_text}=    Get Text          ${locator}
    Should Be Equal As Strings           ${actual_text}      ${expected_text}

Verify Publication Date
    [Documentation]    Verify the publication date of the article based on the ${expected_date}
    [Arguments]    ${expected_date}
    Wait Until Element Is Visible        ${PUBLICATION_DATE}
    ${actual_date}=    Get Text          ${PUBLICATION_DATE}
    Should Be Equal                      ${actual_date}      ${expected_date}

Verify Element Is Not Visible
    [Documentation]    Verify that the element identified by ${locator} is not visible.
    [Arguments]        ${locator}
    Wait Until Element Is Not Visible    ${locator}

Input Custom Text
    [Documentation]    Input custom ${text} to the provided ${locator}
    [Arguments]        ${locator}    ${text}
    Wait Until Element Is Visible        ${locator}
    Input Text                           ${locator}          ${text}

Verify Element Values Are Equal
    [Documentation]    Compare ${locator} value with the ${expected_value}
    [Arguments]        ${locator}    ${expected_value}
    ${actual_value}=    Get Value        ${locator}
    Should Be Equal As Strings           ${actual_value}     ${expected_value}

Scroll To Element
    [Documentation]    Created this custom scroll method to solve 'movetargetoutofboundsexception' on firefox
    [Arguments]  ${locator}
    Wait Until Element Is Visible        ${locator}
    ${horizontal_position}=      Get Horizontal Position     ${locator}
    ${vertical_position}=        Get Vertical Position       ${locator}
    Execute Javascript  window.scrollTo(${horizontal_position}, ${vertical_position})

Hover Over Element
    [Arguments]    ${locator}
    Mouse Over                            ${locator}
    Wait Until Element Is Enabled         ${locator}   