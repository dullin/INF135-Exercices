% Demande � l�utilisateur de saisir le nom suivi du pr�nom de l'utilisateur
% (avec deux saisis disctinctes). Le script affiche les message suivant
% avec le nom et pr�nom de l'utilisateur "Bonjour PRENOM NOM!" suivi d'un
% saut de ligne.
% 
% Example:
%   ::
%
%       >> nomEtPrenom
%       Veuillez entrer votre nom: Loblaw
%       Veuillez entrer votre pr�nom: Bob
%       Bonjour Bob Loblaw!
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit le pr�nom et le nom.
nom = input('Veuillez entrer votre nom: ', 's');
prenom = input('Veuillez entrer votre pr�nom: ', 's');

% Affiche la saluation.
fprintf('Bonjour %s %s!\n', prenom, nom);
