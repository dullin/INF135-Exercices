% Demande � l'utilisateur de saisir trois nombres. Le script affiche le
% plus petit des trois nombres. Le script doit aussi affich� un message si
% il y a eu �galit� sur le plut petit nombre. L'affichage de base prends la forme
% "Plus petit : NOMBRE" suivi d'un saut de ligne. L'affichage de l'�galit�
% prends la forme "Il y a eu �galit�." suivi d'un saut de ligne.
% 
% Example:
%   ::
%
%       >> minimumEntreTrois
%       Entrez un nombre: 34
%       Entrez un autre nombre: 67
%       Entrez un autre nombre: 32
%       Plus petit : 32
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit les trois nombres.
nb1 = input('Entrez un nombre: ');
nb2 = input('Entrez un autre nombre: ');
nb3 = input('Entrez un autre nombre: ');

% Par d�faut, il n'y a pas d'�galit�.
estEgal = false;

% Trouve le plus petit nombre entre le premier et deuxi�me.
if nb1 < nb2
    petit = nb1;
elseif nb1 > nb2
    petit = nb2;
else
    %Si �galit�, sauvegarde pour affichage final.
    estEgal = true;
    petit = nb1;
end

% Compare le plus petit entre les deux premiers et le troisi�me.
if petit > nb3
    petit = nb3;
    % Si le troisi�me est plus petit, il n'y a pas d'�galit� entre les deux
    % premiers nombre.
    estEgal = false;
elseif petit == nb3
    estEgal = true;
end

% Affiche le r�sultat et notre �galit� possible.
fprintf('Plus petit : %g\n', petit)
if estEgal
    fprintf('Il y a eu �galit�.\n')
end
