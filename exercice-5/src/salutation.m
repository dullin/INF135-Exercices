% Script qui saisit le nom d'un utilisateur. Affiche un message 'Bonjour NOM.'.
%
% Warning:
%   L'utilisation d'opérateurs de formattage dans le fprintf est interdite.
%   Il faut construire la phrase avec des concaténations.
%
% Example:
%   ::
%
%         >> salutation
%         Quel est votre nom : Hugo
%         Bonjour Hugo.

% Vide l'écran et la mémoire.
clear;
clc;

% Saisit le nom de l'utilisateur.
nom_usager = input('Quel est votre nom : ','s');

% Affiche avec de la concaténation.
fprintf(['Bonjour ' nom_usager '.\n']);