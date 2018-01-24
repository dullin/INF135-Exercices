function [plusGrandDiviseur] = E7PGCD(a, b)
% E7PGCD - Plus grand commun diviseur. La fonction retourne le plus grand
% commun diviseur entre deux nombre. Utlisier l'algorithme suivant ou le ^
% représente un && et la flèche une assignation:
% 	\begin{algorithmic}
% 	\While{$a \neq b \land b \neq 0$}
%     		\If{$a > b$}
% 			\State $a \gets a-b$
% 		\Else
% 			\State $b \gets b-a$
% 		\EndIf
%     \EndWhile
%     \If{$a=0$}
%     	return b
% 	\Else
% 	return a
% 	\EndIf
%     \end{algorithmic}
%
% Syntaxe : [plusGrandDiviseur] = E7PGCD(a, b)
%
% Entrées :
%   a [double] - Première valeur.
%   b [double] - Deuxième valeur.
%
% Sorties :
%   plusGrandDiviseur [double] - Plus grand diviseur des deux nombres.
%
% Example :
%   E7PGCD(12, 8) %% Retourne 4
%

%Utilise l'algorithme fourni pour trouver les plus grand diviseur.
while a ~= 0 && b ~= 0
    if a > b
        a = a - b;
    else
        b = b - a;
    end
end

if a == 0
    plusGrandDiviseur = b;
else
    plusGrandDiviseur = a;
end
end
