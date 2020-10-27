*** Settings ***
Library   String 

*** Test Case ***
FOR Loop with Upper Bounds Range
    [Documentation]   This gives us a 0 based range
    FOR   ${Index}  IN RANGE  5
      Log   ${Index}
      ${RANDOM_STRING} =    Generate Random String    ${Index}
      Log    ${RANDOM_STRING}
    END

FOR Loop with Start and Finish Range
  [Documentation]   No longer a 0 based range because I provided start
  FOR   ${Index}    IN RANGE   1    4
    Log    ${Index}
    ${RANDOM_STRING} =    Generate Random String    ${Index}
    Log    ${RANDOM_STRING}
  END


*** Keywords ***
  Do Something    Log    Do something