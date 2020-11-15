function afficheTableau(tableau)
% Affiche le contenu de chaque cases d'un tableau.
%
% Args:
%   tableau (double): Tableau à afficher.
%
% Example :
%   ::
%
%       >> afficheTableau([12 65 11])
%         Les valeurs du tableau :
%         12 65 11
%
%   ::
%
%       >> afficheTableau(65)
%         Les valeurs du tableau :
%         65 
%


fprintf('Les valeurs du tableau:\n')
% Parcourt le tableau et affiche chaque valeur.
for i=1:numel(tableau)
    fprintf('%g ', tableau(i))
end
fprintf('\n')

end

