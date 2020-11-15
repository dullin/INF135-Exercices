function [valide] = estNumeroPiece(no)
% Vérifie si un numéro de pièce est valide. Le numéro de pièce doit avoir
% la forme exacte ‘LLL-CCC-CC’. Valide la taille de la chaine du numéro
% ainsi que les "L" sont de lettres en majuscules, les "C" sont des
% chiffres et que les trait d'unions sont présents.
%
% Note:
%   La comparaison de lettre et de chiffre peut se faire avec la
%   comparaison avec les cdoes ascii. **Indice**: Les lettres et les
%   chiffres sont en ordre chronologiques dans la table.
%
% Args:
%   no (char): La chaine à validé comme numéro de pièce.
% Returns:
%   logical: Si le numéro est valide.
% Example:
%   ::
%
%       >> estNumeroPiece('BRQ-245-21')
%         ans =
%           logical
%            1
%
%   ::
%
%       >> estNumeroPiece('allo')
%         ans =
%           logical
%            0
%

TAILLE_NO = 10;

POSITION_TIRET_1 = 4;
POSITION_TIRET_2 = 8;

I_MAJUSCULE_DEBUT = 1;
I_MAJUSCULE_FIN = 3;

I_CHIFFRE_DEBUT_1 = 5;
I_CHIFFRE_FIN_1 = 7;
I_CHIFFRE_DEBUT_2 = 9;
I_CHIFFRE_FIN_2 = 10;

% Prémisse que le numéro est valide.
valide = true;

% Validation taille.
if numel(no) ~= TAILLE_NO
    valide = false;
    
    % Retourne prématurément sans regarder le reste des instructions.
    return
end

% Vérifie la présence des '-'.
if no(POSITION_TIRET_1) ~= '-' || no(POSITION_TIRET_2)~= '-'
    % Si ce n'est pas respect�, quitte la fonction en retournant 0
    valide = false;
    
    return
end

% Vérifie les trois premières lettre en majuscules.
for i= I_MAJUSCULE_DEBUT:I_MAJUSCULE_FIN
    if no(i) < 'A' || no(i) > 'Z'
        valide = false;
        
        return
    end
end

% Validation des chiffres.
% Utilse la concaténation de tableau pour avoir une seule boucle.
for i = [I_CHIFFRE_DEBUT_1:I_CHIFFRE_FIN_1, I_CHIFFRE_DEBUT_2:I_CHIFFRE_FIN_2]
    if no(i)<'0' || no(i)>'9'
        valide = false;
        
        return
    end
end

end

