*** Settings ***
Test Setup  Begin Web Test
Test Teardown  End Web Test
Resource  ../ResourceFile/ZomatoApp.robot
Resource  ../ResourceFile/CommonWeb.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.zomato.com/india

*** Test Cases ***
HomePage Should Be Open And Verify
    [Documentation]  Home Page Should Be Open and Verify the homepage wheteher its open correct page or not
    [Tags]  HomePage
    ZomatoApp.Navigate Url And Verify HomePage
User Should Select Location And Find Restaurant
    [Documentation]  User Should Able to select location and found proper restaurent from dearch box
    [Tags]  RestaurantPage
    ZomatoApp.Navigate Url And Verify HomePage
    ZomatoApp.Search For Reataurent
    ZomatoApp.User Should Select Restaurent With Location