
setTestsUp
try
    inputOut = [1, 53, 7, 2, 5];
    
    menu
    validateStdin('allo monde')
    
    menu
    validateStdin('invalide')
    
    menu
    validateStdin('2 x 5 = 10')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown