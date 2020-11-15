
setTestsUp
try
    alloMonde
    validateStdin('Allo monde');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown