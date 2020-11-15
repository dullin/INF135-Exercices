
setTestsUp
try
    inputOut = {'Bob', 'George', 'Roger', '', '', ''};
    
    nomEtPrenom
    validateStdin('Bonjour George Bob')
    
    nomEtPrenom
    validateStdin('Bonjour Roger ')
    
    nomEtPrenom
    validateStdin('Bonjour')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown