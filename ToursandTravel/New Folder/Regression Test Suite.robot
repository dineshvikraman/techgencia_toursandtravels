*** Settings ***
Library    SeleniumLibrary     


***Variables***
${url}   https://lockmyseat.com/TourPackages/
${Browser}    Chrome 


*** Test Cases ***

Login Test
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window
    Sleep    5        
    Close Browser
       
    