% Demande � l'utilisateur de saisir son poids (en kg) et sa taille (en m).
% Le script calcule l'indice de masse corporelle en utilisant la forumule
% suivante: 
% 
% .. math::
%   IMC = \frac{poids}{taille^2}
%
% Le script affiche ensuite la cat�gorie de l'IMC selon les crit�res
% suivant : si l'IMC est plus petit que 18.5, l'utilisateur est "maigre",
% si l'IMC est plus grand ou �gal � 18.5 et plus petit que 30,
% l'utilisateur est "normale" et si l'utilisateur est plug grand ou �gal �
% 30, l'utilisateur est "ob�se". L'affichage prends la forme "Cat�gorie IMC
% : CAT�GORIE" suivi d'un saut de ligne. 
% `IMC Wikipedia <https://fr.wikipedia.org/wiki/Indice_de_masse_corporelle>`_
% 
% Example:
%   ::
%
%       >> imcPersonne
%       Veuillez entrer votre poids (en kg.): 65
%       Veuillez entrer votre taille (en m.): 1.65
%       Cat�gorie IMC : normale
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit le poids et la taille de l'individu.
poids = input('Veuillez entrer votre poids (en kg.): ');
taille = input('Veuillez entrer votre taille (en m.): ');
    
% Calcule l'IMC.
imc = poids / (taille * taille);

% D�termine la categorie.
if (imc < 18.5)
    categorie = 'maigre';
elseif (imc < 30)
    categorie = 'normale';
else
    categorie = 'ob�se';
end

% Affiche la cat�gorie de l'IMC.
fprintf('Cat�gorie IMC : %s\n', categorie);
