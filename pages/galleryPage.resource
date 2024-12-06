*** Settings ***
Library        SeleniumLibrary
Variables      ../resources/test-data.py

*** Keywords ***
Verify Image Count
    [Documentation]    Verify the image count of the page based on the ${expected_count}
    [Arguments]    ${expected_count}
    ${images}=    Get WebElements        ${IMAGES}
    ${actual_count}=    Get Length       ${images}
    Should Be Equal As Numbers           ${actual_count}    ${expected_count}

Verify Image Caption
    [Documentation]    Verify the image caption of the image based on the ${index} and ${expected_caption}
    [Arguments]    ${index}    ${expected_caption}
    ${caption_xpath}=    Set Variable    (//div[@class='img-desc img-desc--inverted d-flex']//span[contains(@class, 'caption caption--inverted')])[${index}]
    Wait Until Element Is Visible        ${caption_xpath}    timeout=2s
    ${actual_caption}=    Get Text       ${caption_xpath}
    Should Be Equal                      ${actual_caption}   ${expected_caption}

Verify Images and Captions
    [Documentation]    Verify the image count and captions of a list of images based on the ${expected_image_count} and ${expected_caption}
    [Arguments]    ${expected_image_count}    ${expected_caption}
    Verify Image Count                   ${expected_image_count}
    FOR    ${index}    IN RANGE    1     ${expected_image_count}+1
        Verify Image Caption             ${index}            ${expected_caption}[${index-1}]
    END