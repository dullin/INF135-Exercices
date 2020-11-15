function [ nbMot ] = q6_nbMotsAvecLettre(chaine, lettre)
nbMot = 0;
while ~isempty(chaine)
    [tok, chaine] = strtok(chaine);
    % Version longue numel(strfind(tok, lettre)) > 1 
    if strfind(tok,lettre)
        nbMot = nbMot + 1;
    end
end
end

