*** Settings ***
Library   DatabaseLibrary
LIbrary   OperatingSystem
Library   String
Library   Dialogs


*** Variable ***
${DB_NAME} =   rftutorial
${DB_USER_NAME} =   rftutorial
${DB_USER_PASSWORD} =   password1
${DB_HOST} =   localhost
${DB_PORT} =   4332
${PREVIOUS_ROW_COUNT}


*** Keywords ***
Connect
    Connect To Database   pymssql   ${DB_NAME}   ${DB_USER_NAME}   ${DB_USER_PASSWORD}   ${DB_HOST}   ${DB_PORT}

Save Current Row Count 
    ${current_row_count} =   Row Count   SELECT * FROM DemoItems;
    Set Suite Variable   ${PREVIOUS_ROW_COUNT}   ${current_row_count}
    Log   ${current_row_count}

Get Input Data
    ${name} =   Get Value From User   Enter a First name
    Set Suite Variable   ${FIRST_NAME}   ${name}

Insert Recort
    Execute SQL String   INSERT INTO DemoItem (ItemName, FirstName) VALUE ('New Item: ' + CAST(GetData() as VARCHAR(50)), '${FIRST_NAME}');

Verify Neew Recort Added
    ${new_row_count} =   Row Count   SELECT * FROM DemoItem;
    Log   ${new_row_count}
    Should be Equal as Numbers   ${new_row_count}   ${PREVIOUS_ROW_COUNT + 1}

Verify Last Record
    ${queryResults} =   Query   SELECT TOP 1 * FROM DemoItems ORDER BY ItemID DESC;
    Should be Equal as Strings   ${queryResults[0][2]}   ${FIRST_NAME}
    Log   ${queryResults[0][2]}

Log All Rows
    ${queryResults} =   Query   SELECT * FROM DemoItems ORDER BY ItemId 
    Log Many   ${queryResults}

Disconnect
    Disconnect from Database
