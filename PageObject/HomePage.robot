*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${LOCATION_REATAURANT}  xpath://*[@id="root"]/div[4]/div[3]/div/div/div/div[1]/a/div/div/h5

*** Keywords ***
Navigate To "URL"
    Go To  ${URL}

Verify HomePage
    #${VERIFY_HOMEPAGE}=  css:#root > div.sc-1mo3ldo-0.sc-dQnMOy.jiwymX > div.heading > h2
    #Wait until Element Is Visible  css:#root > div.sc-1mo3ldo-0.sc-dQnMOy.jiwymX > div.heading > h2
    Page Should Contain  Popular locations in
    Sleep  5s
Select Restauratn location wise
    #Click Element  ${LOCATION_REATAURANT}
    Scroll Element Into View  ${LOCATION_REATAURANT}
    Wait Until Element Is Visible  ${LOCATION_REATAURANT}
    Click Element  ${LOCATION_REATAURANT}
