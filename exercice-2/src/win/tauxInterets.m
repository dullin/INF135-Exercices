% Calcule un placement. Saisi un montant initial, un taux d'int�r�ts et une dur�e. Calcule le
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

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Saisit du montant initial, des int�r�ts et de la dur�e.
montantInitial = input('Le montant initial : ');
taux = input('Le taux d''interets : ');
duree = input('La duree : ');

% Initialise le montant finale.
montantFinal = montantInitial;

% Calcule le montant finale de facon it�rative en multipliant les taux
% d'int�r�ts.
for i=1:duree
  montantFinal = montantFinal*(1+taux);
end

% Affiche le montant final
fprintf('Le montant final est : %.2f$\n',montantFinal)
