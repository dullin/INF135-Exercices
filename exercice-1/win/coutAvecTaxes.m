% Calcule le prix � payer sur un article achet�s plusieurs foix incluant
% les taxes. Le script saisit le nombre d'articles achet�s et le prix de
% l'article achet�. La script affiche ensuite le prix total en ajoutant une
% taxe de vente de 13%. L'affichage prends la forme "Prix total : PRIX"
% suivi d'un saut de ligne. L'affichage du prix inclus seulement deux
% d�cimales.
% 
% Example:
%   ::
%
%       >> coutAvecTaxes
%       Entrez le nombre d'article � acheter: 4
%       Entrez le prix de l'article � acheter: 12.53
%       Prix total : 56.64
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Note : Les d�finitions de constantes se retrouve apr�s le clear sinon ces
% derni�res seront effac�es.

% Taux de la taxe de vente.
TAUX_TAXES = 0.13;

% Saisit le nombre d'articles � acheter et le prix de l'article.
nArticle = input('Entrez le nombre d''article � acheter: ');
prixArticle = input('Entrez le prix de l''article � acheter: ');

% Affiche le prix � payer.
% Note : Le .2 dans %.2f permet de limiter le nombre de d�cimales �
% afficher.
fprintf('Prix total : %.2f\n', nArticle * prixArticle * (1+TAUX_TAXES))
