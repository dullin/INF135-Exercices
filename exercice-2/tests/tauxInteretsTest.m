
setTestsUp
try
    inputOut = [15.34, 0.05, 10, ...
        45, 1.12, 4, ...
        1, 1, 1, ...
        12.3, 0.007, 40];
    
    tauxInterets
    validateStdin('24.99');
    
    tauxInterets
    validateStdin('908.98');
    
    tauxInterets
    validateStdin('2.00');
    
    tauxInterets
    validateStdin('16.26');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown