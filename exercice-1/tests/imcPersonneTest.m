
setTestsUp
try
    inputOut = [68, 1.65, 53, 1.78, 105, 1.78];
    
    imcPersonne
    validateStdin('normale')
    
    imcPersonne
    validateStdin('maigre')
    
    imcPersonne
    validateStdin('ob se')
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown