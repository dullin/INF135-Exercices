
setTestsUp
try
    compteurImpaire
    validateStdin('1 3 5 7 9');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown