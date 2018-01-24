function tests = E5Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = [40 3 8];
assert(E5SaisitEntreBorne(5,10) == 8)
end


function setupOnce(testCase)  % do not change function name
% set a new path, for example
warning('off','MATLAB:dispatcher:nameConflict')
addpath('stubs','../')
%Clean global
clearvars -global inputOut
clear input;
end

function teardownOnce(testCase)  % do not change function name
% change back to original path, for example
rmpath('stubs', '../')
warning('on','MATLAB:dispatcher:nameConflict')
end

