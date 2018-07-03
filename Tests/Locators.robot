*** Settings ***
Library  SeleniumLibrary

# Copy / paste the line below into Terminal to execute
# pybot -d results tests/Locators.robot

*** Variables ***



*** Test Cases ***

Should be able to search for product
    [Tags]  Smoke  products    new
    open browser  https://www.amazon.com/  chrome
    Wait Until Page Contains  Your Amazon.com
    #click image  Save big on security and surveillance systems
   input Text  id=twotabsearchtextbox  Ferrari 458
    sleep  3s

    click button  css=#nav-search > form > div.nav-right > div > input

   # click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    #sleep  3s
    #click link  css=#result_2 > div > div.a-row.a-spacing-none > div.a-row.a-spacing-mini > a
    #click link  xpath=//*[@id="result_2"]/div/div[3]/div[1]/a
   # close browser





