function [ joueur ] = meilleurJoueur( tab_joueurs )
%MEILLEURJOUEUR retourne le meilleur joueur du tableau. Le meilleur joueur
%  est celui qui a le plus de points. En cas d'égalité, elle retourne le
%  dernier joueur rencontré.
%   IN:
%       tab_joueurs - le tableau de joueurs.

meilleur = 1;
nb_joueurs = numel(tab_joueurs);

for i=2:nb_joueurs
    if (tab_joueurs(i).points >= tab_joueurs(meilleur).points)
        meilleur = i;
    end
end

joueur = tab_joueurs(meilleur);

end

