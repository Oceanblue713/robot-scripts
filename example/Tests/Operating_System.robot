*** Settings ***
Documentation   These are some file & directory tests
Resource  ../Resources/OperatingSystem/OS.robot


*** Variable ***


*** Test Case ***
Create Some Direction
    [Tags]   OperratingSystem
    OS.Create the Base directory
    OS.Create Directory 1
    OS.Create Directory 2

Create Some Files
    [Tags]   OperatingSystem
    OS.Create the First File
    OS.Create the Second File
    OS.create the Third File

Move a File
    [Tags]   OperatingSystem
    OS.Move File 3 from Directory 2 to Directory 1

Copy a File
    [Tags]   OperatingSystem
    OS. Copy File 1 from Directory 1 to Directory 2