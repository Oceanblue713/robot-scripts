*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Should be able to search for product
    Open Browser    http://www.azmazon.com  firefox
    Sleep   3s
    Input Text   id=twotabsearchtextbox     iPhone
    Sleep   3s
    Click Button    css=#nav-search > form > div.nav-right > div > input
    Sleep   3s
    Click Link      css=[data-component-id='11'] .sg-row:nth-of-type(1) .a-link-normal.a-text-normal
    Open Browser    http://www.azmazon.com  firefox
    Sleep   3s
    Click Image     IWOLLENCE Women Waffle Knit Tunic Dress Casual Summer Short Sleeve Loose Dresses Cover Up Beach Dresses with Pocket