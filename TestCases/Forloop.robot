*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Testing Forloop With Numbers
    FOR    ${i}    IN RANGE    1    10
        Log To Console    ${i}
    END
    Log To Console    ========================================
    @{items}    Create List    1    2    3    4    5
    FOR    ${i}    IN     @{items}
        Log To Console    ${i}
    END
  
  
Testing Forloop With Strings
    @{names}    Create List    pradeep    john    abhi
    Log To Console    \n
    FOR    ${i}    IN     @{names}
        Log To Console    ${i}
    END


Testing Forloop With Condition
    @{items}    Create List    1    2    3    4    5    6    7    8    9    10
    FOR    ${i}    IN    @{items}
        IF    ${i} == 3
            BREAK
        ELSE
            Log To Console    ${i}
        END
    END
    
