
setTestsUp
try
    whileSimple
    validateStdin('valeur final 10');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown