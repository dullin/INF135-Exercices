% Script qui demande les coordonnées cartésiennes (x,y) de deux
% points et qui affiche le point milieu et la distance entre les deux
% points.
% 
% Example:
%   ::
%
%       >> saisirPoint
%         Entrez la coordonnée x du premier point : 5
%         Entrez la coordonnée y du premier point : -4
%         Entrez la coordonnée x du deuxieme point : 12
%         Entrez la coordonnée y du deuxieme point : -6
%         Distance entre les deux points est : 7.28011
%         Le point milieu entre les deux points est : (8.5,-5)

clear;
clc;

% Lecture des deux points.
point1(1) = input('Entrez la coordonnée x du premier point : ');
point1(2) = input('Entrez la coordonnée y du premier point : ');
    
point2(1) = input('Entrez la coordonnée x du deuxieme point : ');
point2(2) = input('Entrez la coordonnée y du deuxieme point : ');

fprintf('\nDistance entre les deux points est : %g', ...
    distanceEntreDeuxPoints(point1, point2));

% Récupere le point au milieu.
p = pointMilieu(point1, point2);

% Affiche le point milieu.
fprintf('\nLe point milieu entre les deux points est : (%g,%g)\n',...
    p(1), p(2));

