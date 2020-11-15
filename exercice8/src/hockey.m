%  Ce script lit au clavier les informations des joueurs et les copie dans un tableau
%  de joueurs. Il affiche ensuite toutes les informations du meilleur joueur.
%  Enfin, des informations sur chacun des clubs sont affichées à l'écran.

clc;

tab_joueurs = lireJoueurs();

if (numel(tab_joueurs) > 0)
    fprintf('\n\nMeilleur joueur\n');
    afficheJoueur(meilleurJoueur(tab_joueurs));
    afficheInfoClubs(tab_joueurs);
end