function fprintf(varargin)
global printedText
printedText = [printedText, sprintf(varargin{:})];

end
