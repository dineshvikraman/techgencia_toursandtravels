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
    
#search
    
    Click Element    xpath:/html/body/header/div/div[1]/p[2]/a                           
    Select From List By Label    location_filter    Chile - Chile
    Sleep    2    
    Select From List By Label    activity_filter    Sight Seeing        
    Click Button    xpath://*[@id="post-427"]/div/div[1]/div/div[1]/div/div/form/div/button 
    
#result
    
    Click Button    xpath://*[@id="post-51734"]/div/div/div/div[2]/div[2]/div/div[13]/div/div[2]/div/button    
    Sleep    5    
    
#details
    Input Text    name:text-1667999136664[]    SAMPLE USER
    Input Text    name:text-1667999171116[]    dineshvikraman@gmail.com    
    Input Text    name:text-1669962835290[]    9876543210    
    Input Text    name:textarea-1667999298024[]    sample address   
    Click Button    xpath:/html/body/div[1]/div[1]/div[2]/div[2]/div[1]/div/div/div[3]/div[1]/div[3]/div/form/div[2]/div[2]/button[1]    
    Click Button    xpath:/html/body/div[4]/div[3]/div/button[2]    
    

#checkout
    Sleep    120             
    Click Element    xpath:/html/body/div[1]/div/div[2]/div/main/article/div/div/form[2]/div[2]/div/div/ul/li[2]/span/input           
    Sleep    10
    #Click Link    xpath:/html/body/div/div/div/div/div[1]/span    
    #Click Element    name:login_email   
         
                       
    
     
     
            
    
        
        
    
                  
        
    
    
    
         
           
    
       
                     
       
    
    
    
           
       
    