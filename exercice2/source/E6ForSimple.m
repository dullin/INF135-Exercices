% Faire afficher dans chacunes des boucles for suivantes : 
% 	\\\hspace*{-1cm}\begin{tabular}{| l | l | l | l |}
% 		\hline
% 		Boucle 1 & Boucle 2 & Boucle 3 & Boucle 4\\
% 		Début: 1 & Début: 10 & Début: 100 & Début: -100\\
% 		Saut: 1 & Saut: -1 & Saut: 5 & Saut: 50\\
% 		Fin: 10 & Fin: -20 & Fin: 200 & Fin: 100\\
% 		\hline
% 	\end{tabular}

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Identification de la boucle.
fprintf('\nBoucle 1\n');

% Boucle de 1 à 10 et incrémente de 1
% à chaque itération.
for i=1:10 % ou for i=1:1:10
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 2\n');

% Boucle de 10 a -20 et incrémente de -1
% à chaque itération.
for i=10:-1:-20
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 3\n');

% Boucle de 100 a 200 et incrémente de 5
% à chaque itération.
for i=100:5:200
    fprintf('%g\n',i);
end

% Identification de la boucle.
fprintf('\nBoucle 4\n');

% boucle de -100 a 100 par increment de 50
for i=-100:50:100
    % affiche le compteur
    fprintf('%i\n',i);
end
