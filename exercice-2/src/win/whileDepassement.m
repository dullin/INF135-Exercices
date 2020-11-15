% Saisit un nombre limite. Initialise un compteur � 0 et utilise un while
% qui incr�mente le compteur de deux � chaque it�ration. Le compteur
% s'arr�te quand le compteur � d�pass� le nombre limite. Affichez la valeur
% du compteur � la fin de chaque it�ration de la boucle.
%
% Example:
%   ::
%
%       >> whileDepassement
%       Entrez une valeur limite: 13
%       2
%       4
%       6
%       8
%       10
%       12
%       14
%

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Initialise le compteur.
compteur = 0;

% Saisit la valeur limite.
limite = input('Entrez une valeur limite: ');

while(compteur <= limite)
    % Incr�mente de 2 � chaque it�ration.
    compteur = compteur + 2;
    
    % Affiche l'�tat du compteur.
    fprintf('%g\n', compteur);
end
