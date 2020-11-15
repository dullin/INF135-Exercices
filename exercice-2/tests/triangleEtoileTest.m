
setTestsUp
try
    inputOut = 5;
    triangleEtoile
    validateStdin('* ** *** **** *****');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown