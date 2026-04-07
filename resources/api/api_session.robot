*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***
Create API Session
    Create Session    api    ${BASE_URL}    verify=False