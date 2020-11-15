% Script qui saisie le nombre de fr�re et le nombre de soeur et construit
% une seule chaine de caract�res � partir d'autres chaines. La chaine
% indique le nombre de fr�res et soeurs.
% Utilisez les constantes suivantes:
%   ::
%
%         DEBUT = 'Vous avez ';
%         FRERE = ' fr�re';
%         LIEN = ' et ';
%         SOEUR = ' soeur';
%         PLURIEL = 's';
%         FIN = '.';
%         ALTERNATIVE = 'Vous �tes enfant unique.';
%
% Warning:
%   L'utilisation d'op�rateurs de formattage dans le fprintf est interdite.
%   Il faut construire la phrase avec des concat�nations.
% Example:
%   ::
%
%       >> phraseFrereSoeur
%         Combien avez-vous de fr�re(s)? 0
%         Combien avez-vous de soeur(s)? 0
%         Vous �tes enfant unique.
%
%   ::
%
%       >> phraseFrereSoeur
%         Combien avez-vous de fr�re(s)? 3
%         Combien avez-vous de soeur(s)? 1
%         Vous avez 3 fr�res et 1 soeur.
%

% Vide l'�cran et la m�moire.
clear;
clc;

% Constantes
DEBUT = 'Vous avez ';
FRERE = ' fr�re';
LIEN = ' et ';
SOEUR = ' soeur';
PLURIEL = 's';
FIN = '.';
ALTERNATIVE = 'Vous �tes enfant unique.';

% Saisit le nombre de fr�res et soeurs.
nFrere = input('Combien avez-vous de fr�re(s)? ');
nSoeur = input('Combien avez-vous de soeur(s)? ');

% Initialise la phrase.
message = DEBUT;

lien = false;
% Avec au moins un fr�re.
if nFrere>=1
    % Ajoute le nombre de fr�res.
    message = [message num2str(nFrere) FRERE];
    
    % Ins�re le pluriel.
    if nFrere>1
        message = [message PLURIEL];
    end
    
    % Active le lien.
    lien = true;
end

% Avec au moins une soeur.
if nSoeur>=1
    % V�rifie si on avait des fr�res et ajoute lien.
    if lien
        message = [message LIEN];
    end
    
    % Ajout le nombre de soeurs.
    message = [message num2str(nSoeur) SOEUR];
    
    % Ins�re le pluriel.
    if nSoeur>1
        message = [message PLURIEL];
    end
end

% V�rifie si aucun fr�re ni soeur, sinon ajoute la fin.
if strcmp(message,DEBUT)
    message = ALTERNATIVE;
else
    message = [message FIN];
end

% Affiche le message construit.
fprintf([message '\n']);