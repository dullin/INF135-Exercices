% Script qui saisit le nom d'un utilisateur. Affiche un message 'Bonjour
% NOM.' suivit de 'Votre �ge est AGE.'. Les op�rateurs de formatage des
% fprintf sont interdits. Utilisez les op�rations de concat�nations pour
% construire la chaine � afficher.
% 
% Example:
%   ::
%
%       >> nomAge
%         Quel est votre nom : Hugo
%         Quel est votre �ge : 32
%         Bonjour Hugo.
%         Tu as 32 ans.
%

clear;
clc;

% interroge l'usager
nom_usager = input('Quel est votre nom : ','s');
age_usager = input('Quel est votre �ge : ');

% affiche le message
fprintf(['Bonjour ' nom_usager '.\n']);
fprintf(['Tu as ' num2str(age_usager) ' ans.\n']);