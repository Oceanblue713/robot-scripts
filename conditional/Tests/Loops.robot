*** Settings ***
Library   String 

*** Test Case ***
FOR Loop with Upper Bounds Range
    [Documentation]   This gives us a 0 based range
    FOR   ${Index}  IN RANGE  5
      Do Something   ${Index}
      ${RANDOM_STRING} =    Generate Random String    ${Index}
      Log    ${RANDOM_STRING}
    END

FOR Loop with Start and Finish Range
  [Documentation]   No longer a 0 based range because I provided start
  FOR   ${Index}    IN RANGE   1    4
    Do Something    ${Index}
    ${RANDOM_STRING} =    Generate Random String    ${Index}
    Log    ${RANDOM_STRING}
  END

FOR Loop with Start, Finish, and Step Range
  [Documentation]   The counter will jump by 2 each time ("step" value = 2)
  FOR   ${Index}    IN RANGE    1   10    2
    Do Something   ${Index}
    ${RANDOM_STRING} =    Generate Random String    ${Index}
    Log   ${RANDOM_STRING}
  END

FOR Loop with List
  @{ITEMS} =    create List    Item 1   Item 2  Item 3
  FOR   ${ELEMENT}    IN    @{ITEMS}
    Do Something   ${ELEMENT}
  END

Exit a FOR Loop 
  @{ITEMS} =   Create List    Item 1    Item 2    Item 3
  FOR    ${MYItem}    IN    @{ITEMS}
    Log   ${MYItem}
    Run Keyword If   "${MyItem}" == "Item 3"   Exit For Loop
    Log   Item 3 didn't exit yet
  END

  LOG   Out of the loop

Repeat a key word many times
  Repeat Keyword   5   A Repeatable Keyword
  Repeat Keyword   2 times    A Repeatable Keyword

*** Keywords ***
Do Something    
  [Arguments]    ${PassedIndex}
  Log    I was passed a value of ${PassedIndex}!

A Repeatable Keyword
  Log    Repeating

