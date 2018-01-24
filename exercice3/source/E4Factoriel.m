function factoriel = E4Factoriel(n)
% E4Factoriel - Factoriel de n.
% Retourne la somme multiplicative de 1 à n.
%
% Syntaxe : [factoriel] = E4Factoriel(n)
%
% Entrées :
%   n [double] - La valeur pour laquelle on souhaite calculer le factoriel.
%
% Sorties :
%   factoriel [double] - La somme multiplicative factoriel du nombre.
%
% Example :
%   E4Factoriel(5) %% Retourne 120
%

% Trouve la somme cummulative multiplicative de 1 à n.
factoriel = 1;
for indice = 2:n
    factoriel = factoriel * indice;
end
end
