
setTestsUp
try
    forImbrique
    validateStdin('1 3 5 7 9 11 13 15 17 19');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown