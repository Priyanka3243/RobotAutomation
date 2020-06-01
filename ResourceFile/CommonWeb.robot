*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:Blank  ${BROWSER}
    maximize browser window
End Web Test
    Close Browser
