#Task 1 - Gallery
*** Settings ***
Resource          ../pages/galleryPage.resource
Resource          ../resources/common.resource
Variables         ../resources/test-data.py   
Test Template     Gallery Test Template


*** Test Cases ***    url                 expected_text          expected_date                    image_count                        caption_text                         click_times                total_images
Gallery 1 Test        ${GALLERY_1_URL}    ${GALLERY_1_HEADER}    ${GALLERY_1_PUBLICATION_DATE}    ${GALLERY_1_INITIAL_IMAGE_COUNT}   ${GALLERY_1_EXPECTED_CAPTION_TEXT}   ${GALLERY_1_CLICK_TIMES}   ${GALLERY_1_TOTAL_IMAGES}   
Gallery 2 Test        ${GALLERY_2_URL}    ${GALLERY_2_HEADER}    ${GALLERY_2_PUBLICATION_DATE}    ${GALLERY_2_INITIAL_IMAGE_COUNT}   ${GALLERY_2_EXPECTED_CAPTION_TEXT}   ${GALLERY_2_CLICK_TIMES}   ${GALLERY_2_TOTAL_IMAGES}

*** Keywords ***
Gallery Test Template
    [Documentation]    This template is for Task 1 - Gallery. It can be used to run tests with different combination of data and galleries
    [Arguments]   ${URL}    ${expected_text}    ${expected_date}    ${image_count}    ${caption_text}    ${click_times}    ${total_images}
    common.Begin Test                             ${URL}                 
    common.Verify Header Text                     ${HEADER}              ${expected_text}
    common.Verify Publication Date                ${expected_date}
    galleryPage.Verify Image Count                ${image_count}
    common.Click Button                           ${LOAD_MORE_BUTTON}    ${click_times}
    galleryPage.Verify Images and Captions        ${total_images}        ${caption_text}
    common.Verify Element Is Not Visible          ${LOAD_MORE_BUTTON}        
    common.End Test