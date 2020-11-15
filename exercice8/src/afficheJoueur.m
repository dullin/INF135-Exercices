function [  ] = AfficheJoueur( joueur )
%AFFICHEJOUEUR affiche toutes les informations du joueur re�u en param�tre.
%   IN:
%       joueur - enregistrement du joueur

fprintf('\nNom : %s', joueur.nom);
fprintf('\nPrenom : %s', joueur.prenom);
fprintf('\nClub : %s', joueur.club);
fprintf('\nPartie jouee : %d', joueur.pj);
fprintf('\nPasses : %d', joueur.passes);
fprintf('\nPoints : %d', joueur.points);
fprintf('\n+/- : %d', joueur.pm);

end

