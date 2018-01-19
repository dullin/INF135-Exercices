function tests = E8Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = 3;
diary('on')
E8PositifNegatifNul
diary('off')
text = fileread('diary');
expected = ['Le nombre est positif .' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','3',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = 2.7;
diary('on')
E8PositifNegatifNul
diary('off')
text = fileread('diary');
expected = ['Le nombre est positif .' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','2.7',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = -4;
diary('on')
E8PositifNegatifNul
diary('off')
text = fileread('diary');
expected = ['Le nombre est négatif .' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','-4',expected, text);
end

function test4(testCase)
global inputOut;
inputOut = -12.5;
diary('on')
E8PositifNegatifNul
diary('off')
text = fileread('diary');
expected = ['Le nombre est négatif .' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[10,0]',expected, text);
end

function test5(testCase)
global inputOut;
inputOut = 0;
diary('on')
E8PositifNegatifNul
diary('off')
text = fileread('diary');
expected = ['Le nombre est nul .' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[10,0]',expected, text);
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

