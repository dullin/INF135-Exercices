function tests = E7Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [3,4];
diary('on')
E7MultiplieDeuxNombres
diary('off')
text = fileread('diary');
expected = ['3 x 4 = 12' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[3,4]',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = [1.5,2.7];
diary('on')
E7MultiplieDeuxNombres
diary('off')
text = fileread('diary');
expected = ['1.5 x 2.7 = 4.05' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[1.5,2.7]',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [10,0];
diary('on')
E7MultiplieDeuxNombres
diary('off')
text = fileread('diary');
expected = ['10 x 0 = 0' char(10)];
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

