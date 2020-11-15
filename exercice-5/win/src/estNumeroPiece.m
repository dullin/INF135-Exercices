function [valide] = estNumeroPiece(no)
% V�rifie si un num�ro de pi�ce est valide. Le num�ro de pi�ce doit avoir
% la forme exacte �LLL-CCC-CC�. Valide la taille de la chaine du num�ro
% ainsi que les "L" sont de lettres en majuscules, les "C" sont des
% chiffres et que les trait d'unions sont pr�sents.
%
% Note:
%   La comparaison de lettre et de chiffre peut se faire avec la
%   comparaison avec les cdoes ascii. **Indice**: Les lettres et les
%   chiffres sont en ordre chronologiques dans la table.
%
% Args:
%   no (char): La chaine � valid� comme num�ro de pi�ce.
% Returns:
%   logical: Si le num�ro est valide.
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

% Pr�misse que le num�ro est valide.
valide = true;

% Validation taille.
if numel(no) ~= TAILLE_NO
    valide = false;
    
    % Retourne pr�matur�ment sans regarder le reste des instructions.
    return
end

% V�rifie la pr�sence des '-'.
if no(POSITION_TIRET_1) ~= '-' || no(POSITION_TIRET_2)~= '-'
    % Si ce n'est pas respect