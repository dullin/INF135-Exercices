function [  ] = afficheInfoClubs( tab_joueurs )
%AFFICHEINFOCLUBS affiche les informations
%  concernant chacun des clubs. Les informations suivantes sont �crites.
%
%       Le nom du club
%       La somme des buts compt�s par le club.
%       La somme des passes effectu�es par le club.
%       La somme des points du club.
%
%   IN:
%       tab_joueurs - le tableau de joueurs.

nb_joueurs = numel(tab_joueurs);
j=1;
while (j <= nb_joueurs)
    club = Club;
    club.nom = tab_joueurs(j).club;
    club.nbButs = 0;
    club.nbPasses = 0;
    club.nbPoints = 0;
    while (j <= nb_joueurs && strcmp(tab_joueurs(j).club, club.nom))
        club.nbButs = club.nbButs + tab_joueurs(j).buts;
        club.nbPasses = club.nbPasses + tab_joueurs(j).passes;
        club.nbPoints = club.nbPoints + tab_joueurs(j).points;
        j = j + 1;
    end
    fprintf('\n%s %d %d %d\n', club.nom, club.nbButs, club.nbPasses, club.nbPoints);
end


end

