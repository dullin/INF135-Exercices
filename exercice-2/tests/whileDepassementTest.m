
setTestsUp
try
    inputOut = [13, 17, 0];
    whileDepassement
    validateStdin('2 4 6 8 10 12 14');
    whileDepassement
    validateStdin('2 4 6 8 10 12 14 16 18');
    whileDepassement
    validateStdin('2');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown