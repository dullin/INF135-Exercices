function tests = E11Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [68, 1.65];
diary('on')
E11IMC
diary('off')
text = fileread('diary');
expected = ['Catégorie IMC : normale' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[68, 1.65]',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = [53, 1.78];
diary('on')
E11IMC
diary('off')
text = fileread('diary');
expected = ['Catégorie IMC : maigre' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[53, 1.78]',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [105, 1.78];
diary('on')
E11IMC
diary('off')
text = fileread('diary');
expected = ['Catégorie IMC : obèse' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[105, 1.78]',expected, text);
end

function setupOnce(testCase)  % do not change function name
% set a new path, for example
warning('off','MATLAB:dispatcher:nameConflict')
addpath('stubs','../')
if exist('diary', 'file')
    delete('diary');
end
%Clean global
clearvars -global inputOut
clear input;
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

