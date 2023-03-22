*** Settings ***
Library                 ExcelLibrary
Suite Teardown          Close All Excel Documents

*** Test Cases ***
Simple
    ${document}=    Create Excel Document       doc_name
    Should Be Equal As Strings                  doc_name    ${document}
    Write Excel Cell                            row_num=1    col_num=1    value=text
    Save Excel Document                         filename=${CURDIR}\\..\\data\\file.xlsx
