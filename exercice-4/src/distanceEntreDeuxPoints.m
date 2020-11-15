function [distance] = distanceEntreDeuxPoints(point1, point2)
% Distance entre deux points. Les points sont reçuts en vecteurs
% de deux cases avec les coordonnées x et y dans les cases 1 et 2. La
% distance est trouvé par la racine carrée de la somme des différences et x
% et y au carré.
%
% Args:
%   point1 (1x2 double): Vecteur de deux cases avec les valeurs x et y.
%   point2 (1x2 double): Vecteur de deux cases avec les valeurs x et y.
%
% Returns:
%   (double) Distance entre les deux points.
%
% Example:
%   ::
%
%       >> distanceEntreDeuxPoints([1, 1], [3, 3])
%         ans =
%             2.8284
%
%   ::
%
%       >> distanceEntreDeuxPoints([3, 4], [2, 7])
%         ans =
%             3.1623
%

distance = sqrt((point2(1) - point1(1))^2 + ((point2(2) - point1(2))) ^ 2);

end

