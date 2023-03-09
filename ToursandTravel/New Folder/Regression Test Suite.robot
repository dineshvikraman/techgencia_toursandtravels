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
    
Booking Flow1
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
    Sleep    8    
    
#result
    
    Click Button    xpath://*[@id="post-51734"]/div/div/div/div[2]/div[2]/div/div[11]/div/div[2]/div/button   
    Sleep    5    
    
#details
    Input Text    name:text-1667999136664[]    SAMPLE USER
    Input Text    name:text-1667999171116[]    dineshvikraman@gmail.com    
    Input Text    name:text-1669962835290[]    9876543210    
    Input Text    name:textarea-1667999298024[]    sample address  
    Sleep    5       
    Choose File    id:wau_file_addon   C://Users/User/Desktop/Image/pass.png
    
 
    
    Click Button    xpath:/html/body/div[1]/div[1]/div[2]/div[2]/div[1]/div/div/div[3]/div[1]/div[3]/div/form/div[2]/div[2]/button[1]    
    Click Button    xpath://*[@id="dialog_box_container"]/div/div[3]/div/button[2]    
   #Sleep    5    

#checkout
   Sleep    10 
   Execute Javascript    window.scrollTo(0,document.body.scrollHeight) 
   Sleep    10    
   Select Frame    id:braintree-hosted-field-number   
   Sleep    3             
   Input Password    xpath://input[@id="credit-card-number"]    3566000020000410  
   Unselect Frame     
   Sleep    5  
   Select Frame    id:braintree-hosted-field-expirationDate
   Sleep    2            
   Input Password    xpath://*[@id="expiration"]    1223    
   Unselect Frame
   Sleep    5    
   Select Frame    id:braintree-hosted-field-cvv
   Sleep    3    
   Input Password    id:cvv    100
   Unselect Frame
   Sleep    3    
   
#place order

    Click Button    id:place_order    
    Sleep    8
    Page Should Contain    Thank you. Your order has been received.        
    
    
    
    
                   
       
            
             
      
    
       
      
     
      
     
    
 
    
    
           
    
       
       
    
         
                       
    
     
     
            
    
        
        
    
                  
        
    
    
    
         
           
    
       
                     
       
    
    
    
           
       
    