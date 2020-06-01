*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${RESTAURANT_NAME}=  dosa point
${RESTAURANT_SEARCHBOX}  keywords_input

*** Keywords ***
Enter Restaurant Name In Search Box
    Input Text  ${RESTAURANT_SEARCHBOX}  ${RESTAURANT_NAME}
    Click Element  search_button
Verify Restaurant Page
   # Page Should Contain  Find the best restaurants, cafés, and bars in Delhi NCR
   ${text}=  Get Text  css:#zimagery-container > h1
   Page Should Contain  ${text}
