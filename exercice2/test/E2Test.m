function tests = E3Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = 1;
diary('on')
E2HeureFormater
diary('off')
text = fileread('diary');
expected = '00:00:01';
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',10,expected, text);
end

function test2(testCase)
global inputOut;
inputOut = 0;
diary('on')
E2HeureFormater
diary('off')
text = fileread('diary');
expected = '00:00:00';
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',-15,expected, text);
end

function test3(testCase)
global inputOut;
inputOut = 243567;
diary('on')
E2HeureFormater
diary('off')
text = fileread('diary');
expected = '67:39:27';
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s',0,expected, text);
end

function test4(testCase)
global inputOut;
inputOut = 45;
diary('on')
E2HeureFormater
diary('off')
text = fileread('diary');
expected = '00:00:45';
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

