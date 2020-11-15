% Script qui saisit le nom d'un utilisateur. Affiche un message 'Bonjour NOM.'.
%
% Warning:
%   L'utilisation d'op�rateurs de formattage dans le fprintf est interdite.
%   Il faut construire la phrase avec des concat�nations.
%
% Example:
%   ::
%
%         >> salutation
%         Quel est votre nom : Hugo
%         Bonjour Hugo.

% Vide l'�cran et la m�moire.
clear;
clc;

% Saisit le nom de l'utilisateur.
nom_usager = input('Quel est votre nom : ','s');

% Affiche avec de la concat�nation.
fprintf(['Bonjour ' nom_usager '.\n']);