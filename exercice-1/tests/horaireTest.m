
setTestsUp
try
    horaire
    validateStdin(['Horaire : '  ...
    '7h00 ' ...
    '12h00 - diner ' ...
    '17h00 - souper' ]);
catch ME
    setTestsDown
    throw(ME)
end

setTestsDown