% Saisit un nombre de secondes au clavier, le transforme en un nombre
% d'heures, de minutes et de secondes et l'afficher en format hh:mm:ss.
% See also:
% ‘mod, rem, fix, floor‘ pour vous aider.
%
% Example:
%   ::
%
%       >> heureFormater
%       Veuillez entrer un nombre de secondes: 7543
%       Le durée correspondante est 02:05:43
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Nombre de secondes dans une minute et une heure.
SECONDES_PAR_MINUTE = 60;
SECONDES_PAR_HEURE = 60 * SECONDES_PAR_MINUTE;

% Saisit le nombre de secondes.
nSecondesSaisi = input('Veuillez entrer un nombre de secondes: ');

% Nombre d'heures complètes dans notre nombre de secondes.
nHeures = fix(nSecondesSaisi / SECONDES_PAR_HEURE);

% Nombre de minutes complètes ne fesant pas parti d'une heure complète.
nMinutes = fix(rem(nSecondesSaisi, SECONDES_PAR_HEURE) / SECONDES_PAR_MINUTE);

% Nombre de secondes restantes hors des minutes complète.
nSecondes = rem(nSecondesSaisi, SECONDES_PAR_MINUTE);

% Affiche la durée totale correspondante en format hh:mm:ss.
fprintf('Le durée correspondante est %02i:%02i:%02i\n', ...
        nHeures, nMinutes, nSecondes)
