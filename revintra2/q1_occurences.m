function [tabOccurences] = q1_occurences(chaine,tabChar)
tabOccurences = zeros(1,numel(tabChar));
for i=1:numel(tabChar)
  tabOccurences(i) = numel(strfind(chaine, tabChar(i)));
end
end

