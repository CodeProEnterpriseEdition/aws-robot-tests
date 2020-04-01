
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${url}    https://fi.wikipedia.org/wiki/Hemuli


*** Keywords ***

startup
    Open Browser    ${url}    ${BROWSER}
    
shutdown
    Close All Browsers