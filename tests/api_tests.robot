*** Settings ***
Library    RequestsLibrary
Suite Setup    Create Session    reqres    https://reqres.in    verify=${False}    headers={"X-API-Key":"reqres-free-v1","Accept":"application/json"}

*** Test Cases ***
GET - List Users (Positive)
    ${response}=    GET On Session    reqres    url=/api/users?page=2
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    \nGET Passed Successfully!

GET - Invalid Endpoint (Negative)
    ${response}=    GET On Session    reqres    url=/api/unknownpage
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    \nInvalid Endpoint Handled Gracefully (200)


POST - Create User (Positive)
    ${body}=    Create Dictionary    name=John    job=QA
    ${response}=    POST On Session    reqres    url=/api/users    json=${body}
    Should Be Equal As Integers    ${response.status_code}    201
    Log To Console    \nPOST Passed Successfully!

POST - Missing Body (Negative)
    ${response}=    POST On Session    reqres    url=/api/users
    Should Be Equal As Integers    ${response.status_code}    201
    Log To Console    \nPOST with Empty Body Still Returns 201

PUT - Update User (Positive)
    ${body}=    Create Dictionary    name=John    job=Lead-QA
    ${response}=    PUT On Session    reqres    url=/api/users/2    json=${body}
    Should Be Equal As Integers    ${response.status_code}    200

PUT - Invalid User (Negative)
    ${body}=    Create Dictionary    name=Ghost    job=None
    ${response}=    PUT On Session    reqres    url=/api/users/99999    json=${body}
    Should Be Equal As Integers    ${response.status_code}    200
