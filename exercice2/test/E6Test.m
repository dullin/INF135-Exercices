function tests = E6Test
tests = functiontests(localfunctions);
end

function test1(testCase)
diary('on')
E6ForSimple
diary('off')
text = fileread('diary');
expected = ' 1 2 3 4 5 6 7 8 9 10 10 9 8 7 6 5 4 3 2 1 0 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 100 105 110 115 120 125 130 135 140 145 150 155 160 165 170 175 180 185 190 195 200 -100 -50 0 50 100';
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

