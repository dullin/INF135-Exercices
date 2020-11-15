
setTestsUp
try
    inputOut = [3, 5, 12, 7, 5.5, 9, -4, 12, 0, 7];
    
    minimumEntreDeux
    validateStdin('Plus petit 3')
    
    minimumEntreDeux
    validateStdin('Plus petit 7')
    
    minimumEntreDeux
    validateStdin('Plus petit 5.5')
    
    minimumEntreDeux
    validateStdin('Plus petit -4')
    
    minimumEntreDeux
    validateStdin('Plus petit 0')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown