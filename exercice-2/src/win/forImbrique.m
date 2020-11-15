% Utilise deux boucles for imbriqu�s l'une dans l'autre. La boucle externe
% va de 1 � 20 par saut de 2. La boucle interne va du compteur de la
% premi�re boucle � 20 par saut de deux. Affiche les valeur du compteur de
% la boucle interne. Affiche un saut de ligne � chaque it�ration de la
% boucle externe.
%
% Example:
%   ::
%
%       >> forImbrique
%       1 3 5 7 9 11 13 15 17 19 
%       3 5 7 9 11 13 15 17 19 
%       5 7 9 11 13 15 17 19 
%       7 9 11 13 15 17 19 
%       9 11 13 15 17 19 
%       11 13 15 17 19 
%       13 15 17 19 
%       15 17 19 
%       17 19 
%       19
%

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Premi�re boucle de 1 a 100, par incr�ment de 2.
for i=1:2:20   
    % Deuxi�me boucle de ii a 100, par incr�ment de 2.
    for j=i:2:20
        % Affiche le compteur de seconde boucle.
        fprintf('%g ',j);
    end
    fprintf('\n');
end
