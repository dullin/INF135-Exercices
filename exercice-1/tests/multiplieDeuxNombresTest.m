
setTestsUp
try
    inputOut = [3, 4, 1.5, 2.7, 10, 0];
    
    multiplieDeuxNombres
    validateStdin('3 x 4 = 12')
    
    multiplieDeuxNombres
    validateStdin('1.5 x 2.7 = 4.05')
    
    multiplieDeuxNombres
    validateStdin('10 x 0 = 0')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown