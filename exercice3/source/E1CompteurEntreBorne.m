function somme = E1CompteurEntreBorne(debut, fin)
% E1CompteurEntreBorne - La somme entre deux borne.
% Retourne la somme en entre un borne minimale et une borne maximale.
%   Ex : debut + (debut+1) + ... + (fin-1) + fin.
%
% Syntaxe : [somme] = E1CompteurEntreBorne(debut, fin)
%
% Entrées :
%   debut [double] - La valeur de départ de la sommation à faire.
%   fin [double] - La valeur de fin de la sommation à faire.
%
% Sorties :
%   somme [double] - La somme du compteur entre les bornes données.
%
% Example :
%   E1CompteurEntreBorne(10, 13) %%Retourne 46
%   E1CompteurEntreBorne(0, 7); %% Retourne 28
%

% Calcule la somme cumulative.
somme = 0;
for i= debut : fin
    somme = somme + i;
end

% NOTE: Une autre réponse sans l'utilisation de la boucle.
% La légende dit que que l'équation fut trouvé par Carl Friedrich Gauss
% durant sont enfance.
% http://bit-player.org/wp-content/extras/gaussfiles/gauss-snippets.html
% reponse = (fin - debut + 1) * (debut + fin) / 2;

end
