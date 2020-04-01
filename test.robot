*** Settings ***
Library    SeleniumLibrary
Resource    all_resources.robot

Suite Setup    startup
Suite Teardown    shutdown

# robot -d test_logs -i toka test.robot

*** Variables ***

${link_xpath}=  

${BROWSER}  headlesschrome
${xpath_to_hemuli} =   //*[contains(.,'Hemuli')]
${other_count} =    //*[contains(text(),'Hemuli')]  
${tove_jansson_lokator_xpath} =    //*[@id="mw-content-text"]/div/table[1]/tbody/tr[3]/td[2]/a
${tove_jansson_lokator_custom} =    //*[contains(.,text()'Tove Jansson')]

*** Test Cases ***

Eka testi
    [Tags]  eka
    Lokator Esimerkki
    
Toka testi
    [Tags]  toka
    Laske Hemulit

*** Keywords ***
 
Test link works
    Click Link    "locator"
 
Lokator Esimerkki
    ${luojan_nimi} =    Get Text    ${tove_jansson_lokator_xpath}
    ${luojan_nimien_maara} =    Get Element Count    ${tove_jansson_lokator_custom}

Laske Hemulit
    ${count} =  Get Element Count   ${xpath_to_hemuli}
    ${other_count} =    Get Element Count      ${other_count}