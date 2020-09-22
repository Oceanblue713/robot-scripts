*** Settings ***
Library   RequestsLibrary
Library   SeleniumLibrary

*** Variable ***


*** Keywords ***
Check Github Username
    Create Session   my_github_session   https://api.github.Comment
    ${response} =   Get Request   my_github_session   users/robotframeworktutorial
    Should Be Equal As Strings   ${response.status_code}   200

    ${json} =   Set Variable   ${response.json()}
    Should be Equal As Strings   ${json['login]}   robotframeworktutorial
    Log   ${json}

Display Emoji
    Create Session   my_github_session    https://api.github.Comment
    ${response} =   Get Request   my_github_session   emojis
    Should Be Equal As Strings    ${response.status_code}   200

    ${json} =   Set Variable    ${response.json()}
    ${emoji_url} =    Set Variable  ${json['aerial_tramway']}
    Open Browser    ${emoji_url}    firefox