function tests = E6Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = {'Bob', 'George'};
diary('on')
E6NomEtPrenom
diary('off')
text = fileread('diary');
expected = ['Bonjour George Bob !' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','{''Bob'', ''''}',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = {'Roger', ''};
diary('on')
E6NomEtPrenom
diary('off')
text = fileread('diary');
expected = ['Bonjour Roger !' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s','{''Roger'', ''''}',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = {'',''};
diary('on')
E6NomEtPrenom
diary('off')
text = fileread('diary');
expected = ['Bonjour  !' char(10)];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %g\nExpected : %s\nGot: %s','{'''',''''}',expected, text);
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

