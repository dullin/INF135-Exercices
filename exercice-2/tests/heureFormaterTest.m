
setTestsUp
try
    inputOut = [7543, 1, 0, 243567];
    heureFormater
    validateStdin('02:05:43');
    heureFormater
    validateStdin('00:00:01');
    heureFormater
    validateStdin('00:00:00');
    heureFormater
    validateStdin('67:39:27');
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown