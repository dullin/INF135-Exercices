function tests = E5Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [1, 1];
diary('on')
E5CoutAvecTaxes
diary('off')
text = fileread('diary');
expected = ['Prix total : 1.13' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[1, 1]',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = [2, 12.24];
diary('on')
E5CoutAvecTaxes
diary('off')
text = fileread('diary');
expected = ['Prix total : 27.66' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s','[2, 12.24]',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [0, 0];
diary('on')
E5CoutAvecTaxes
diary('off')
text = fileread('diary');
expected = ['Prix total : 0.00' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s','[0, 0]',expected, text);
end


function setupOnce(testCase)  % do not change function name
% set a new path, for example
warning('off','MATLAB:dispatcher:nameConflict')
addpath('stubs','../')
if exist('diary', 'file')
    delete('diary');
end
%Clean global
global inputOut;
clear inputOut;
end

function teardownOnce(testCase)  % do not change function name
% change back to original path, for example
rmpath('stubs', '../')
warning('on','MATLAB:dispatcher:nameConflict')
end

function teardown(testCase)  % do not change function name
% close figure, for example
if exist('diary', 'file')
    delete('diary');
end
end

