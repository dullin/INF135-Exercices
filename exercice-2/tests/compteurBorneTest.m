
setTestsUp
try
    inputOut = [3, 13, 2, 4, 10, 3, 1, 10, 2];
    compteurBorne
    validateStdin('3 5 7 9 11 13');

    compteurBorne
    validateStdin('4 7 10');

    compteurBorne
    validateStdin('1 3 5 7 9');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown