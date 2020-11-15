% Script qui saisit le nom d'un utilisateur. Affiche un message 'Bonjour
% NOM.' suivit de 'Votre âge est AGE.'. Les opérateurs de formatage des
% fprintf sont interdits. Utilisez les opérations de concaténations pour
% construire la chaine à afficher.
% 
% Example:
%   ::
%
%       >> nomAge
%         Quel est votre nom : Hugo
%         Quel est votre âge : 32
%         Bonjour Hugo.
%         Tu as 32 ans.
%

clear;
clc;

% interroge l'usager
nom_usager = input('Quel est votre nom : ','s');
age_usager = input('Quel est votre âge : ');

% affiche le message
fprintf(['Bonjour ' nom_usager '.\n']);
fprintf(['Tu as ' num2str(age_usager) ' ans.\n']);