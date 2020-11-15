% Demande à l’utilisateur de saisir le nom suivi du prénom de l'utilisateur
% (avec deux saisis disctinctes). Le script affiche les message suivant
% avec le nom et prénom de l'utilisateur "Bonjour PRENOM NOM!" suivi d'un
% saut de ligne.
% 
% Example:
%   ::
%
%       >> nomEtPrenom
%       Veuillez entrer votre nom: Loblaw
%       Veuillez entrer votre prénom: Bob
%       Bonjour Bob Loblaw!
%

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit le prénom et le nom.
nom = input('Veuillez entrer votre nom: ', 's');
prenom = input('Veuillez entrer votre prénom: ', 's');

% Affiche la saluation.
fprintf('Bonjour %s %s!\n', prenom, nom);
