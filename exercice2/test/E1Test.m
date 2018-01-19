function tests = E1Test
tests = functiontests(localfunctions);
end

function test1(testCase)
diary('on')
E1WhileSimple
diary('off')
text = fileread('diary');
expected = ['10'];
cmp = strcmplazy(text,expected);
assert(cmp,'Expected : %s Got: %s',expected, text);
end

function setupOnce(testCase)  % do not change function name
% set a new path, for example
warning('off','MATLAB:dispatcher:nameConflict')
addpath('stubs','../')
if exist('diary', 'file')
    delete('diary');
end
%Clean global and persistent
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

