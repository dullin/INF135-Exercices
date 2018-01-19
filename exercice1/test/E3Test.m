function tests = E3Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = 10;
diary('on')
E3DoubleDuNombre
diary('off')
text = fileread('diary');
expected = ['Double du nombre : 20' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',10,expected, text);
end

function test2(testCase)
global inputOut;
inputOut = -15;
diary('on')
E3DoubleDuNombre
diary('off')
text = fileread('diary');
expected = ['Double du nombre : -30' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',-15,expected, text);
end

function test3(testCase)
global inputOut;
inputOut = 0;
diary('on')
E3DoubleDuNombre
diary('off')
text = fileread('diary');
expected = ['Double du nombre : 0' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',0,expected, text);
end

function test4(testCase)
global inputOut;
inputOut = 0.7;
diary('on')
E3DoubleDuNombre
diary('off')
text = fileread('diary');
expected = ['Double du nombre : 1.4' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',0.7,expected, text);
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

