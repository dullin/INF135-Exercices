% Demande à l'utilisateur de saisir son poids (en kg) et sa taille (en m).
% Le script calcule l'indice de masse corporelle en utilisant la forumule
% suivante: 
% 
% .. math::
%   IMC = \frac{poids}{taille^2}
%
% Le script affiche ensuite la catégorie de l'IMC selon les critères
% suivant : si l'IMC est plus petit que 18.5, l'utilisateur est "maigre",
% si l'IMC est plus grand ou égal à 18.5 et plus petit que 30,
% l'utilisateur est "normale" et si l'utilisateur est plug grand ou égal à
% 30, l'utilisateur est "obèse". L'affichage prends la forme "Catégorie IMC
% : CATÉGORIE" suivi d'un saut de ligne. 
% `IMC Wikipedia <https://fr.wikipedia.org/wiki/Indice_de_masse_corporelle>`_
% 
% Example:
%   ::
%
%       >> imcPersonne
%       Veuillez entrer votre poids (en kg.): 65
%       Veuillez entrer votre taille (en m.): 1.65
%       Catégorie IMC : normale
%

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit le poids et la taille de l'individu.
poids = input('Veuillez entrer votre poids (en kg.): ');
taille = input('Veuillez entrer votre taille (en m.): ');
    
% Calcule l'IMC.
imc = poids / (taille * taille);

% Détermine la categorie.
if (imc < 18.5)
    categorie = 'maigre';
elseif (imc < 30)
    categorie = 'normale';
else
    categorie = 'obèse';
end

% Affiche la catégorie de l'IMC.
fprintf('Catégorie IMC : %s\n', categorie);
