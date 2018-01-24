function E9nNombrePremier(n)
% E9nNombrePremier - n nombre premiers.
% Affiche les n nombres premiers dans la fenêtre de commande.
%
% Syntaxe : E9nNombrePremier(n)
%
% Entrées :
%   n [double] - Le nombre de nombre premiers à afficher.
%
% Example :
%   E9nNombrePremier(10)
%

% Compte le nombre généré.
nAffiche = 0;
i = 1;
while (nAffiche < n)
    % Trouve si le prochain indice est premier.
    if (E8EstPremier(i))
        % Affiche et garde compte du nombre afficher.
        nAffiche = nAffiche + 1;
        fprintf('%d ieme nombre premier : %d.\n', nAffiche, i);
    end
    i = i + 1;
end

end
