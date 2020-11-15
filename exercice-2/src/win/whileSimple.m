% Initialise un compteur � 0. Avec une boucle while, la boucle while
% incr�mente le compteur tant que la valeur est plus petite que 10. Affiche
% le compteur apr�s la boucle.
%
% Example:
%   ::
%
%       >> whileSimple
%       Valeur finale : 10
%

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Initialise le compteur.
compteur = 0;

% Incr�mente de 1 le compteur � chaque it�ration jusqu'� 10.
while(compteur < 10)
    compteur = compteur+1;
end

% Affiche la valeur finale.
fprintf('Valeur finale : %g\n', compteur);
