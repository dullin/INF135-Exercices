function [cmp] = strcmplazy(str,expected)
wordList = strsplit(expected);

cmp = true;

for i = 1:numel(wordList)
    word = wordList{i};
    if ~contains(str,word,'IgnoreCase',true)
        cmp = false;
    end
end
end

