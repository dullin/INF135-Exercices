% Demande à l'utilisateur de saisir deux coordonnées. Les saisies
% représente les coordonnées x et y d'un point sur un plan cartésien. Le
% script affiche dans quel quadrant appartient le point. L'affichage prends
% la forme "(X, Y) est dans le quadrant : QUADRANT." suivi d'un saut de
% ligne. La valeur QUADRANT peut être "I", "II", "III" ou "IV".
% \href{https://fr.wikipedia.org/wiki/Quadrant_(mathématiques)}{Quadrant
% Cartésiens}
 
% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit la coordonnée en x et y.
x = input('Veuillez entrer la coordonnée en x: ');
y = input('Veuillez entrer la coordonnée en y: ');

% Détermine le quadrant auquel le point appartient.
% Note: Dans le cas d'une ambiguïté de décision, vous n'avez pas besoin de
% considéré le cas. Par exemple, on ne traite pas le cas ou le point est
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

% On affiche le quadrant auquel le point appartient.
fprintf('(%g, %g) est dans le quadrant : %s.\n', x, y, quadrant);
