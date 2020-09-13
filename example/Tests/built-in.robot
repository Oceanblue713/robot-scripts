*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${GLOBAL1} =  I am global variable

*** Test Case ***
Declare and set Variable
    ${some_test_data} =  Set Variable   This is a local variable
    Set Test Variable   ${more_test_data}   This is test variable

    Set Suite Variable  ${some_suite_data}   This is suite variable 

    Set Global Variable  ${SOME_GLOBAL_DATA}  This is global variable

Logging stuff
    [Tags]   BuiltIn
    Comment   ${unset_variable}
    Comment   Just a random commeent
    Comment   ${GLOBAL1}
    Log   I have something to say
    Log Many   Something say 1   omething say 2   omething say 3
    Log To Console  This can only be seen in Console
    Log Variables   
    # Log   ${some_test_data}
    #Log   ${more_test_data}
    Log   ${some_suite_data}
    Log   ${SOME_GLOBAL_DATA}

Ignore failures in this test
  [Tags]   BuiltIn
  Open Browser   http://www.amazon.com   firefox

  Run Keyword And Continue On Failure   Wait Until Page Contains   this text doesn't exist
  Run Keyword And Continue On Failure   Wait Until Page Contains   More text that doesn't exist

  #Log   ${some_test_data}
  Log   ${GLOBAL1}
  Log   ${SOME_GLOBAL_DATA}

Repeat things
  Repeat Keyword   3 Times   Say Something Funny

  #Log   ${some_test_data}
  Log   ${GLOBAL1}
  Log   ${SOME_GLOBAL_DATA}

*** Keywords ***
Say Something Funny
    Log   These pretzels are making me thirsty...