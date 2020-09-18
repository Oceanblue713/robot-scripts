*** Settings ***
Documentation   These are some SQL Server Database tests
Resource   ../Resources/DB/SQL_Server.robot
Test Setup   SQL_Server.Connect
Test Teardown   SQL_Server.Disconnect


*** Variable ***


*** Test Case ***
Insert a Record
    [Tags]   SqlServerDB
    SQL_Server.Save Current Row Count
    SQL_Server.Get Input Data
    SQL_Server.Insert Record
    SQL_Server.Verify New Record Added

Verify Insert Contains Correct Input Data
    [Tags]   SqlServerDB
    SQL_Seerver.Verify Last Record

Log All Rows
    SQL_Seerver.Log All Rows
