function [point] = pointMilieu(point1, point2)
% Point milieu situé entre deux points. Les points sont
% représenté dans des vecteurs de deux cases avec les valeurs x et y dans
% les cases 1 et 2.
%
% Args:
%   point1 (double): Vecteur de deux cases avec les valeurs x et y.
%   point2 (double): Vecteur de deux cases avec les valeurs x et y.
%
% Returns:
%   point (double): Vecteur de deux cases avec les valeurs x et y.
%   Représente le point milieur entre le point1 et point2.
%
% Example:
%   ::
%
%       >> pointMilieu([12, 5], [33, 2])
%         ans =
%            22.5000    3.5000
%
%   ::
%
%       >> pointMilieu([4, 7], [12, 6])
%         ans =
%             8.0000    6.5000
%

% Le milieu se calcule pour chaque coordonnée par la valeur absolue de
% leurs différences divisées par 2.
point(1) = (point2(1) + point1(1)) / 2;
point(2) = (point2(2) + point1(2)) / 2;

end

