
setTestsUp
try
    forSimple
    validateStdin('1 2 3 3 2 1 0 -1 -2 100 150 200 -100 -50 0 50 100');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown