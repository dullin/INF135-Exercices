
setTestsUp
try
    inputOut = [1, 2, 3, ...
        53, 1.78, -5, ...
        45, 45, 17, ...
        45, 45, 90];
    
    minimumEntreTrois
    validateStdin('1')
    
    minimumEntreTrois
    validateStdin('-5')
    
    minimumEntreTrois
    validateStdin('17')
    
    minimumEntreTrois
    validateStdin('45')
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown