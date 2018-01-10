function tests = E10Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [3, 5];
diary('on')
E10QuadrantCartesien
diary('off')
text = fileread('diary');
expected = ['( 3 , 5 ) est dans le quadrant : I .' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[3,5]',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = [-12, 7];
diary('on')
E10QuadrantCartesien
diary('off')
text = fileread('diary');
expected = ['( -12 , 7 ) est dans le quadrant : II .' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[-12, 7]',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [-5.5, -9];
diary('on')
E10QuadrantCartesien
diary('off')
text = fileread('diary');
expected = ['( -5.5 , -9 ) est dans le quadrant : III .' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[-5.5, -9]',expected, text);
end

function test4(testCase)
global inputOut;
inputOut = [4, -12];
diary('on')
E10QuadrantCartesien
diary('off')
text = fileread('diary');
expected = ['( 4, -12 ) est dans le quadrant : IV .' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[4, -12]',expected, text);
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

