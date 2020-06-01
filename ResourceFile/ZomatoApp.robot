*** Settings ***
Library  SeleniumLibrary
Resource  ../PageObject/HomePage.robot
Resource  ./ResourceFile/CommonWeb.robot
Resource  ../PageObject/SearchRestaurentPage.robot
Resource  ../PageObject/RestaurantListPage.robot
*** Variables ***


*** Keywords ***
Navigate Url And Verify HomePage
    HomePage.Navigate To "URL"
    HomePage.Verify HomePage

Search For Reataurent
    HomePage.Select Restauratn location wise
    SearchRestaurentPage.Enter Restaurant Name In Search Box
    SearchRestaurentPage.Verify Restaurant Page

User Should Select Restaurent With Location
    RestaurantListPage.Verify Landing "MatchingRestaurant" Page
    RestaurantListPage.Select Restaurant with Appropriate "Location"