% Faire afficher dans chacunes des boucles for suivantes : 
%
% +----------+-----------+------------+-------------+
% | Boucle 1 | Boucle 2  | Boucle 3   | Boucle 4    |
% +==========+===========+============+=============+
% | D�but: 1 | D�but: 3  | D�but: 100 | D�but: -100 |
% +----------+-----------+------------+-------------+
% | Saut: 1  | Saut: -1  | Saut: 50   | Saut: 50    |
% +----------+-----------+------------+-------------+
% | Fin: 3   | Fin: -2   | Fin: 200   | Fin: 100    |
% +----------+-----------+------------+-------------+
%
% Example:
%   ::
%
%       >> forSimple
%       Boucle 1
%       1
%       2
%       3
%       Boucle 2
%       3
%       2
%       1
%       0
%       -1
%       -2
%       Boucle 3
%       100
%       150
%       200
%       Boucle 4
%       -100
%       -50
%       0
%       50
%       100
%

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Identification de la boucle.
fprintf('\nBoucle 1\n');

% Boucle de 1 � 3 et incr�mente de 1
% � chaque it�ration.
for i=1:3 % ou for i=1:1:10
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 2\n');

% Boucle de 3 a -2 et incr�mente de -1
% � chaque it�ration.
for i=3:-1:-2
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 3\n');

% Boucle de 100 a 200 et incr�mente de 50
% � chaque it�ration.
for i=100:50:200
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 4\n');

% boucle de -100 a 100 par increment de 50
for i=-100:50:100
    % affiche le compteur
    fprintf('%i\n',i);
end
