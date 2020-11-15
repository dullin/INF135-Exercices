function affichenNombrePremier(n)
% Affiche les n nombres premiers dans la fenêtre de commande.
%
% Args:
%   n (double): Le nombre de nombre premiers à afficher.
%
% Exemple:
%   ::
%
%       >> affichenNombrePremier(4)
%         1 ieme nombre premier : 2.
%         2 ieme nombre premier : 3.
%         3 ieme nombre premier : 5.
%         4 ieme nombre premier : 7.
%

% Compte le nombre généré.
nAffiche = 0;
i = 1;
while (nAffiche < n)
    % Trouve si le prochain indice est premier.
    if (estPremier(i))
        % Affiche et garde compte du nombre afficher.
        nAffiche = nAffiche + 1;
        fprintf('%d ieme nombre premier : %d.\n', nAffiche, i);
    end
    i = i + 1;
end

end
