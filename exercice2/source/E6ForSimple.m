%Exercice de boucle for simple

% Vide la fenêtre de commande et la mémoire.
clc
clear

% identifie la boucle dans la fenetre de commande
fprintf('\nBoucle 1\n');

% boucle de 1 a 10 par increment de 1
for ii=1:10 %ou for ii=1:1:10
    % affiche le compteur
    fprintf('%i\n',ii);
end

% identifie la boucle dans la fenetre de commande
fprintf('\nBoucle 2\n');

% boucle de 10 a -20 par increment de -1
for ii=10:-1:-20
    % affiche le compteur
    fprintf('%i\n',ii);
end

% identifie la boucle dans la fenetre de commande
fprintf('\nBoucle 3\n');

% boucle de 100 a 200 par increment de 5
for ii=100:5:200
    % affiche le compteur
    fprintf('%i\n',ii);
end

% identifie la boucle dans la fenetre de commande
fprintf('\nBoucle 4\n');

% boucle de -100 a 100 par increment de 50
for ii=-100:50:100
    % affiche le compteur
    fprintf('%i\n',ii);
end
