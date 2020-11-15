
setTestsUp
try
    inputOut = [1, 1, 2, 12.24, 0, 0];
    
    coutAvecTaxes
    validateStdin('Prix total 1.13')
    
    coutAvecTaxes
    validateStdin('Prix total 27.66')
    
    coutAvecTaxes
    validateStdin('Prix total 0.00')
    
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown