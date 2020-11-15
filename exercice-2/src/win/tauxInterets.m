% Calcule un placement. Saisi un montant initial, un taux d'intérêts et une durée. Calcule le
% montant final avec la formule suivante : 
%
% .. math::
%   montantFinal = montantInitial(1+tauxInteret)^{duree}
%
% Il est interdit d'utiliser l'exposant pour calculer me montant final,
% utilisez une boucle.
%
% Example:
%   ::
%
%         >> tauxInterets
%         Le montant initial : 15.34
%         Le taux d'interets : 0.05
%         La duree : 10
%         Le montant final est : 24.99$
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit du montant initial, des intérêts et de la durée.
montantInitial = input('Le montant initial : ');
taux = input('Le taux d''interets : ');
duree = input('La duree : ');

% Initialise le montant finale.
montantFinal = montantInitial;

% Calcule le montant finale de facon itérative en multipliant les taux
% d'intérêts.
for i=1:duree
  montantFinal = montantFinal*(1+taux);
end

% Affiche le montant final
fprintf('Le montant final est : %.2f$\n',montantFinal)
