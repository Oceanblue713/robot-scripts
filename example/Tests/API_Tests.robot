*** Settings ***
Documentation   These are some API tests
Resource   ../Resources/API/Github.robot

*** Variable ***


*** Test Case ***
Make a simple REST API call
    [Tags]   API
    Check Github Username

Display emoji from Github
    [Tags]   API
    Display Emoji