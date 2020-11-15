function validateStdin(expected)

global printedText
assert(strcmplazy(printedText, expected), ...
    'Expected: %s\n Got : %s\n', expected, printedText)
printedText = [];

end

