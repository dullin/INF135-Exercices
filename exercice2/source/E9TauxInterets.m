%montant final d'un placement sous interets.                                                             *

% Vide la fenêtre de commande et la mémoire.
clc
clear

montant_initial = input('Le montant initial : ');
taux_interets = input('Le taux d''interets : ');
duree = input('La duree : ');


% initialise le montant finale
montant_final = montant_initial;

% calcule le montant finale de facon iterative en multipliant les taux d'interets
for ii=1:duree
  montant_final = montant_final*(1+taux_interets);
end

%On affiche le montant final
fprintf('Le montant final est : %g\n',montant_final)
