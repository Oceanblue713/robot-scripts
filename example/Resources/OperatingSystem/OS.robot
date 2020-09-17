*** Settings ***
Library   OperatingSystem

*** Variable ***
${output_directory} =   Outputs
${directory_1} =   first directory
${directory_2} =   second directory
${file_1} =   first file.txt
${file_2} =   second file.txt
${file_3} =   third file.txt

*** Keywords ***
Create the Base directory
    Create Directory   ${output_directory}
    Should Exist   ${output_directory}

Create Directory 1
    ${directory_path} =   Join Path   ${output_directory}   ${directory_1}
    Create Dictionary   ${directory_path}
    Should Exist   ${directory_path}

Create Directory 2
    ${directory_path} =    Join Path   ${output_directory}  ${directory_2}
    Create Directory   ${directory_path}
    Should Exit   ${directory_path}

Create the First File
    ${file_path} =  Join Path   ${output_directory}   ${directory_1}   ${file_1}
    Create File   ${file_path}   This is some text in file one!

Create the Second File
    ${file_path} =   Join Path   ${output_directory}   ${directory_2}   ${file_2}
    Create File   ${file_path}   This is some text in file two!

Create the Third File
    ${file_path} =   Join Path   ${output_directory}   ${directory_2}   ${file_3}
    Create File   ${file_path}   This is some text in file three!

Move File 3 from Directory 2 to Directory 1
    ${source_path} =   Join Path   ${output_directory}   ${directory_2}   ${file_3}
    ${target_path} =   Join Path   ${output_directory}   ${directory_1}   ${file_3}

    Move File   ${source_path}   ${target_path}

    Should Exist   ${target_path}
    Should Not Exist   ${sourcec_path}

Copy File 1 from Directory 1 to Directory 2
    ${source_path} =   Join Path   ${output_directory}   ${directory_1}   ${file_1}
    ${source_path} =   Join Path   ${output_directory}   ${directory_2}   ${file_1}

    Copy File   ${source_path}   ${target_path}

    Should Exist   ${target_path}
    Should Exist   ${target_path}
