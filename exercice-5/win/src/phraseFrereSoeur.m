% Script qui saisie le nombre de frère et le nombre de soeur et construit
% une seule chaine de caractères à partir d'autres chaines. La chaine
% indique le nombre de frères et soeurs.
% Utilisez les constantes suivantes:
%   ::
%
%         DEBUT = 'Vous avez ';
%         FRERE = ' frère';
%         LIEN = ' et ';
%         SOEUR = ' soeur';
%         PLURIEL = 's';
%         FIN = '.';
%         ALTERNATIVE = 'Vous êtes enfant unique.';
%
% Warning:
%   L'utilisation d'opérateurs de formattage dans le fprintf est interdite.
%   Il faut construire la phrase avec des concaténations.
% Example:
%   ::
%
%       >> phraseFrereSoeur
%         Combien avez-vous de frère(s)? 0
%         Combien avez-vous de soeur(s)? 0
%         Vous êtes enfant unique.
%
%   ::
%
%       >> phraseFrereSoeur
%         Combien avez-vous de frère(s)? 3
%         Combien avez-vous de soeur(s)? 1
%         Vous avez 3 frères et 1 soeur.
%

% Vide l'écran et la mémoire.
clear;
clc;

% Constantes
DEBUT = 'Vous avez ';
FRERE = ' frère';
LIEN = ' et ';
SOEUR = ' soeur';
PLURIEL = 's';
FIN = '.';
ALTERNATIVE = 'Vous êtes enfant unique.';

% Saisit le nombre de frères et soeurs.
nFrere = input('Combien avez-vous de frère(s)? ');
nSoeur = input('Combien avez-vous de soeur(s)? ');

% Initialise la phrase.
message = DEBUT;

lien = false;
% Avec au moins un frère.
if nFrere>=1
    % Ajoute le nombre de frères.
    message = [message num2str(nFrere) FRERE];
    
    % Insère le pluriel.
    if nFrere>1
        message = [message PLURIEL];
    end
    
    % Active le lien.
    lien = true;
end

% Avec au moins une soeur.
if nSoeur>=1
    % Vérifie si on avait des frères et ajoute lien.
    if lien
        message = [message LIEN];
    end
    
    % Ajout le nombre de soeurs.
    message = [message num2str(nSoeur) SOEUR];
    
    % Insère le pluriel.
    if nSoeur>1
        message = [message PLURIEL];
    end
end

% Vérifie si aucun frère ni soeur, sinon ajoute la fin.
if strcmp(message,DEBUT)
    message = ALTERNATIVE;
else
    message = [message FIN];
end

% Affiche le message construit.
fprintf([message '\n']);