*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${URL} =    https://shop.lululemon.com/
${BROWSER} =    firefox

*** Test Case ***
Should be able to something
    Open Browser    ${URL}    ${BROWSER}

    Mouse Over    xpath=//*[@id="app"]/header/nav/div[2]/div[2]/ul/li[1]/a
    Sleep   1s
    Close Browser