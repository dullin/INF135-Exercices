% Calcule le prix à payer sur un article achetés plusieurs foix incluant
% les taxes. Le script saisit le nombre d'articles achetés et le prix de
% l'article acheté. La script affiche ensuite le prix total en ajoutant une
% taxe de vente de 13\%. L'affichage prends la forme "Prix total : PRIX"
% suivi d'un saut de ligne. L'affichage du prix inclus seulement deux
% décimales.

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Note : Les définitions de constantes se retrouve après le clear sinon ces
% dernières seront effacées.

% Taux de la taxe de vente.
TAUX_TAXES = 0.13;

% Saisit le nombre d'articles à acheter et le prix de l'article.
nArticle = input('Entrez le nombre d''article à acheter: ');
prixArticle = input('Entrez le prix de l''article à acheter: ');

% Affiche le prix à payer.
% Note : Le .2 dans %.2f permet de limiter le nombre de décimales à
% afficher.
fprintf('Prix total : %.2f\n', nArticle * prixArticle * (1+TAUX_TAXES))
