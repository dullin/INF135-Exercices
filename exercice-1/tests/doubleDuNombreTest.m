
setTestsUp
try
    inputOut = [10, -15, 0];
    
    doubleDuNombre
    validateStdin('Double nombre 20')
    
    doubleDuNombre
    validateStdin('Double nombre -30')
    
    doubleDuNombre
    validateStdin('Double nombre 0')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown