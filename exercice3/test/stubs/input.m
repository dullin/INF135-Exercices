function [x] = input(varargin)
global inputOut
persistent iInput

if isempty(iInput)
    iInput = 1;
elseif numel(inputOut) < iInput
    iInput = 1;
end

if iscell(inputOut)
    x = inputOut{iInput};
else
    x = inputOut(iInput);
end

iInput = iInput + 1;
if numel(inputOut) < iInput
    iInput = 1;
end
end