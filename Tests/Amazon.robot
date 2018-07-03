*** Settings ***

Documentation  This is dome basic info about the whole suite
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
User must sign on to check out
    [Documentation]  this is some basic info about test
    [tags]  smoke Test  New   products1
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//div[@class='nav-search-submit nav-sprite']//input[@type='submit']
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  id=hlb-ptc-btn-native
    #Page Should Contain Element  signInSubmit



