function tests = E12Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [1, 2, 3];
diary('on')
E12MinimumEntreTrois
diary('off')
text = fileread('diary');
expected = ['Plus petit : 1' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[1, 2, 3]',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = [53, 1.78, -5];
diary('on')
E12MinimumEntreTrois
diary('off')
text = fileread('diary');
expected = ['Plus petit : -5' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[53, 1.78, -5]',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [45, 45, 17];
diary('on')
E12MinimumEntreTrois
diary('off')
text = fileread('diary');
expected = ['Plus petit : 17' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[45, 45, 17]',expected, text);
end

function test4(testCase)
global inputOut;
inputOut = [45, 45, 90];
diary('on')
E12MinimumEntreTrois
diary('off')
text = fileread('diary');
expected = ['Plus petit : 45' newline 'Il y a eu égalité.' newline];
cmp = strcmp(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[45, 45, 90]',expected, text);
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

