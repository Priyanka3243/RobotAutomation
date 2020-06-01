*** Settings ***
Test Setup  Begin Web Test
Test Teardown  End Web Test
Resource  ../ResourceFile/ZomatoApp.robot
Resource  ../ResourceFile/CommonWeb.robot

*** Variables ***
${Browser}  Chrome
${URL}  http://automationpractice.com/

*** Test Cases ***