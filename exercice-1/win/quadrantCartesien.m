% Demande � l'utilisateur de saisir deux coordonn�es. Les saisies
% repr�sente les coordonn�es x et y d'un point sur un plan cart�sien. Le
% script affiche dans quel quadrant appartient le point. L'affichage prends
% la forme "(X, Y) est dans le quadrant : QUADRANT." suivi d'un saut de
% ligne. La valeur QUADRANT peut �tre "I", "II", "III" ou "IV".
% `Quadrant Cart�siens Wikipedia <https://fr.wikipedia.org/wiki/Quadrant_(math�matiques)>`_
% 
% Example:
%   ::
%
%       >> quadrantCartesien
%       Veuillez entrer la coordonn�e en x: -4
%       Veuillez entrer la coordonn�e en y: 6
%       (-4, 6) est dans le quadrant : II.
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit la coordonn�e en x et y.
x = input('Veuillez entrer la coordonn�e en x: ');
y = input('Veuillez entrer la coordonn�e en y: ');

% D�termine le quadrant auquel le point appartient.
% Note: Dans le cas d'une ambigu�t� de d�cision, vous n'avez pas besoin de
% consid�r� le cas. Par exemple, on ne traite pas le cas ou le point est
% directement sur un des axes avec x == 0 ou y == 0.
if (x >= 0)
    if (y >= 0)
        quadrant = 'I';
    else
        quadrant = 'IV';
    end
else
    if (y >= 0)
        quadrant = 'II';
    else
        quadrant = 'III';
    end
end

% Affiche le quadrant auquel le point appartient.
fprintf('(%g, %g) est dans le quadrant : %s.\n', x, y, quadrant);
