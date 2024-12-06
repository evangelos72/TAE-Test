*** Settings ***
Library        SeleniumLibrary
Variables      test-data.py

*** Keywords ***
Begin Test
    [Documentation]    Opens the browser and navigates to ${url} with maximized browser window
    [Arguments]    ${url}
    Open Browser   ${url}    ${BROWSER}
    Maximize Browser Window

End Test
    [Documentation]    Closes the browser
    Close Browser

Click Button
    [Documentation]    Click the button identified by ${button_locator} ${click_times} times.
    [Arguments]        ${button_locator}    ${click_times}
    FOR    ${index}    IN RANGE    ${click_times}
        Wait Until Element Is Visible    ${button_locator}
        Wait Until Element Is Enabled    ${button_locator}
        Scroll Element Into View         ${button_locator}
        Click Element                    ${button_locator}
        Sleep                            0.5S
    END

Verify Header Text
    [Documentation]    Verify that the header identified by ${header_locator} contains the expected text ${expected_text}.
    [Arguments]        ${header_locator}    ${expected_text}
    Wait Until Element Is Visible        ${header_locator}
    ${actual_text}=    Get Text          ${header_locator}
    Should Be Equal As Strings           ${actual_text}    ${expected_text}

Verify Publication Date
    [Documentation]    Verify the publication date of the article based on the ${expected_date}
    [Arguments]    ${expected_date}
    Wait Until Element Is Visible        ${PUBLICATION_DATE}
    ${actual_date}=    Get Text          ${PUBLICATION_DATE}
    Should Be Equal                      ${actual_date}    ${expected_date}

Verify Element Is Not Visible
    [Documentation]    Verify that the element identified by ${element_locator} is not visible.
    [Arguments]        ${element_locator}
    Wait Until Element Is Not Visible    ${element_locator}