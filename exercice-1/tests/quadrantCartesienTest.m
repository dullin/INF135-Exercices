
setTestsUp
try
    inputOut = [3, 5, -12, 7, -5.5, -9, 4, -12];
    
    quadrantCartesien
    validateStdin('( 3 , 5 ) I')
    
    quadrantCartesien
    validateStdin('( -12 , 7 ) II')
    
    quadrantCartesien
    validateStdin('( -5.5 , -9 ) III')
    
    quadrantCartesien
    validateStdin('( 4, -12 ) IV')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown