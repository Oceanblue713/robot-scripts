*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Should be able to search for product
    Open Browser    http://www.azmazon.com  firefox
    Sleep   2s
    Input Text   id=twotabsearchtextbox     iPhone
    Sleep   3s
    Press Keys       \ ENTER
    # Click Button    css=#nav-search > form > div.nav-right > div > input
    Sleep   2s
    Click Link      css=[data-component-id='11'] .sg-row:nth-of-type(1) .a-link-normal.a-text-normal
    Open Browser    https://allianceenterprises.com/  firefox
    Sleep   2s
    Mouse Over      id=menu-item-785
    Sleep   2s
    Click Image     Aware