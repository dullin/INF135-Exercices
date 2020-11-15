
setTestsUp
try
    inputOut = [10, -15, 0, 0.7];
    
    carreDuNombre
    validateStdin('nombre 100')
    
    carreDuNombre
    validateStdin('nombre 225')
    
    carreDuNombre
    validateStdin('nombre 0')
    
    carreDuNombre
    validateStdin('nombre 0.49')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown