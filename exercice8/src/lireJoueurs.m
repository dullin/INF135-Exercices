function [ tab_joueurs ] = LireJoueurs(  )
%LIREJOUEURS lit au clavier les informations sur des joueurs et
%   enregistre dans un tableau de joueurs ces informations. Elle retourne le
%   tableau contenant les joueurs.

tab_joueurs = [];

nb_joueurs = input ('Nombre de joueurs? ');

for j = 1:nb_joueurs
    % Création de l'objet.
    joueur = Joueur;
    joueur.nom = input('Nom: ', 's');
    joueur.prenom = input('Pr�nom: ', 's');
    joueur.club = input('Club: ', 's');
    joueur.pj = input('PJ: ');
    joueur.buts = input('Buts: ');
    joueur.passes = input('Passes: ');
    joueur.points = joueur.buts + joueur.passes;
    joueur.pm = input('PM: ');
    
    tab_joueurs = [tab_joueurs joueur];
    
end

end

