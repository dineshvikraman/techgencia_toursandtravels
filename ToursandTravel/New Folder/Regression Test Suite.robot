*** Settings ***
Library    SeleniumLibrary     


***Variables***
${url}   https://lockmyseat.com/TourPackages/
${Browser}    Chrome 


*** Test Cases ***

Login Test
    Open Browser    ${url}    ${Browser}
    Sleep    5    
    Maximize Browser Window
    Click Link    xpath://header/div[1]/nav[1]/div[2]/ul[1]/li[3]/a[1]    
    Sleep    5     
    Click Element    xpath://input[@id='username']    
    Sleep    2    
    Input Text    id:username    dineshvikraman@gmail.com
    Sleep    2    
    Click Element    xpath://input[@id='password']
    Sleep    2    
    Input Password    id:password    dineshvikraman@gmail.com     
    Sleep    2     
    Click Button    xpath://button[contains(text(),'Log in')]
    Sleep    5                          
    Close Browser
    
Booking Flow
    Open Browser    ${url}    ${Browser}
    Sleep    5    
    Maximize Browser Window
    Click Link    xpath://header/div[1]/nav[1]/div[2]/ul[1]/li[3]/a[1]    
    Sleep    5     
    Click Element    xpath://input[@id='username']    
    Sleep    2    
    Input Text    id:username    dineshvikraman@gmail.com
    Sleep    2    
    Click Element    xpath://input[@id='password']
    Sleep    2    
    Input Password    id:password    dineshvikraman@gmail.com     
    Sleep    2     
    Click Button    xpath://button[contains(text(),'Log in')]
    Sleep    5 
    
    
    Click Element    xpath:/html/body/header/div/div[1]/p[2]/a                           
    Select From List By Label    location_filter    Chile - Chile
    Sleep    2    
    Select From List By Label    activity_filter    Sight Seeing        
    Click Button    xpath://*[@id="post-427"]/div/div[1]/div/div[1]/div/div/form/div/button 
    
    Click Button    xpath:/html/body/div[1]/div/div[2]/div/main/article/div/div/div/div[2]/div[2]/div/div[14]/div/div[2]/div/button    
    Sleep    5    
    Click Button    
                     
       
    
    
    
           
       
    