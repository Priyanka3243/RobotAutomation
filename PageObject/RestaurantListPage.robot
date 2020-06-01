*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${SELECT_RESTAURANT}  xpath://*[@id="orig-search-list"]/div[1]/div[1]/div/article/div[1]/div/div[2]/div[1]/div[1]/a[1]

*** Keywords ***
Verify Landing "MatchingRestaurant" Page
    Wait Until Element Is Visible  xpath:/html/body/div[4]/div/div/div/div/ol/li[4]/h1
Select Restaurant with Appropriate "Location"
    Click Element  ${SELECT_RESTAURANT}
