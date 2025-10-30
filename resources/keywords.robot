*** Settings ***
Library    Collections

*** Keywords ***
Assert Status Code Is
    [Arguments]    ${response}    ${expected}
    Should Be Equal As Integers    ${response.status_code}    ${expected}

Parse JSON Body
    [Arguments]    ${response}
    ${json}=    Evaluate    ${response.json()}    # Converts response to dictionary
    [Return]    ${json}
