function tests = E13Test
tests = functiontests(localfunctions);
end

function test1(testCase)
global inputOut;
inputOut = 1;
diary('on')
E13Menu
diary('off')
text = fileread('diary');
expected = [START_STRING, 'Allo monde !' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','1',expected, text);
end

function test2(testCase)
global inputOut;
inputOut = 53;
diary('on')
E13Menu
diary('off')
text = fileread('diary');
expected = [START_STRING, 'Choix invalide .' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','53',expected, text);
end

function test3(testCase)
global inputOut;
inputOut = [7, 2, 5];
diary('on')
E13Menu
diary('off')
text = fileread('diary');
expected = [START_STRING '2 x 5 = 10' newline];
cmp = strcmplazy(text,expected);
assert(cmp,'Testing input : %s\nExpected : %s\nGot: %s','[7, 2, 5]',expected, text);
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

function start_string = START_STRING()
start_string = ['Quel programme souhaitez-vous appeler?', newline, ...
        '1 - E1AlloMonde', newline, ...
        '2 - E2Horaire', newline, ...
        '3 - E3DoubleDuNombre', newline, ...
        '4 - E4CarreDuNombre', newline, ...
        '5 - E5CoutAvecTaxes', newline, ...
        '6 - E6NomEtPrenom', newline, ...
        '7 - E7MultiplieDeuxNombres', newline, ...
        '8 - E8PositifNegatifNul', newline, ...
        '9 - E9MinimumEntreDeux', newline, ...
        '10 - E10QuadrantCartesien', newline, ...
        '11 - E11IMC', newline, ...
        '12 - E12MinimumEntreTrois', newline];
end
