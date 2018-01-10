%saisit un nombre entier au clavier et afficher tous les diviseurs de ce nombre.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% On saisit le nombre entier.
entier_saisi = input('Veuillez entrer un nombre entier: ');

% Le preambule du message qui sera affiche.
fprintf('Les diviseurs du nombre %g sont:\n',entier_saisi);

% Un diviseur est par definition compris dans l'intervale [1..entier_saisi].
% On enumere tous les nombre de cet interval et on determine pour chacun s'il est un
% diviseur de l'entier saisi.
for un_entier = 1:entier_saisi
    if (0 == mod(entier_saisi, un_entier))
        fprintf('\t%g\n', un_entier);
    end
end

