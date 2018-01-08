function tests = E2Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = 10;
diary('on')
E2Horaire
diary('off')
text = fileread('diary');
expected = ['Horaire:' newline ...
    '7h00 - déjeuner' newline ...
    '12h00 - diner' newline ...
    '17h00 - souper' newline];
cmp = strcmp(text,expected);
assert(cmp,'Expected : %s Got: %s',expected, text);
end

function setupOnce(testCase)
addpath('../')
if exist('diary', 'file')
    delete('diary');
end
%Clean global
global inputOut;
clear inputOut;
end

function teardownOnce(testCase)
rmpath('../')
warning('on','MATLAB:dispatcher:nameConflict')
end

function teardown(testCase)
if exist('diary', 'file')
    delete('diary');
end
end