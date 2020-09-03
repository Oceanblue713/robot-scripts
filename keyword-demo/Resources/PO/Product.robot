*** Settings ***

*** Variable ***
${TOPNAV_SEARCH_BAR} =   twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =   xpath=//div[@id='nav-search']/form[@role='search']//div[@class='nav-search-submit nav-sprite']
*** Keywords ***
Input Product
    Input Text   ${TOPNAV_SEARCH_BAR}     ${SEARCH_TERM}

Click The Search Button
    Click Element    ${TOPNAV_SEARCH_BUTTON}
    Wait Until Page Contains    results for "${SEARCH_TERM}"
