*** Settings ***

*** Keywords ***
Input Product
    Input Text      twotabsearchtextbox  Ferrari 458

Click The Search Button
    Click Element    xpath=//div[@id='nav-search']/form[@role='search']//div[@class='nav-search-submit nav-sprite']
    Wait Until Page Contains    results for "Ferrari 458"