*** Settings ***
Library   XML

*** Variable ***
${XML_MENU_PATH} =   Inputs/menu.xml
${EXPECTED_MENU_COUNT} =   1
${EXPECTED_FOOD_COUNT} =   5

*** Keywords ***
Should be one menu in the file
    ${menu_count} =   Parse XML   ${XML_MENU_PATH}
    Should be Equal   ${root.tag}   breakfast_menu

Verify Menu Name
    ${root} =     Parse XML   ${XML_MENU_PATH}
    Should Be Equal   ${root.tag}   breakfast_menu

Verify Food Count 
    ${food_count} =   Get Element Count   ${XML_MENU_PATH}   food
    Should Be Equal As Numbers  ${food_count}   ${EXPECTED_FOOD_COUNT}

Vefiry First Food Menu
    ${first_food_name} =  Get Element   ${XML_MENU_PATH}   food[1]/price
    Should Be Equal As Strings  ${first_food_name}   $5.95

Verify First Food Price
    ${first_food_price} =   Get Element   ${XML_MENU_PATH}   food[1]/calories
    Should Be Equal As Strings   ${first_food_calories.text}   650

Add New Food
    ${root} =   Parse XML    ${XML_MENU_PATH}
    Add Element    ${root}   <food></food>
    Add Element    ${root}   <name>Grilled Cheese Sndwich</name>   xpath=food[6]
    Add Element    ${root}   <price>$2.95</price>   xpath=food[6]
    Add Element    ${root}   <description>Yummy melted cheese on grilled sourdough slices</description>   xpath=food[6]
    Add Element    ${root}   <calories>300</calories>   xpath=food[6]
    Save XML       ${root}   ${XML_MENU_PATH}

Verify New Food Exists
    Element Should Exist      ${XML_MENU_PATH}   food[6]