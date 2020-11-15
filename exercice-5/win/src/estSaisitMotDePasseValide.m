function [estValide] = estSaisitMotDePasseValide
% Saisie d'un mot de passe et valide que le mot de passe est le
% bon. Après 3 essaies, termine la saisie et retourne `false`. Retourne
% `true` si le mot passe saisit est validé.
% 
% Note:
%   Le mot de passe doit être "caché" en tant que constante dans une
%   fonction de validation privée.
%
% Returns:
%   logical: `true` si la saisit est validé. `false` après 3 essais.
%
% Example:
%   ::
%
%       >> estSaisitMotDePasseValide
%         Entrez le mot de passe: sfd
%         Entrez le mot de passe: 3er
%         Entrez le mot de passe: wvv24
%         ans =
%           logical
%            0
%
%   ::
%
%       >> estSaisitMotDePasseValide
%         Entrez le mot de passe: PaSsWord
%         ans =
%           logical
%            1
%

NB_ESSAI_MAX = 3;

nEssai = 0;
estValide = false;

% Tant qu'il reste des essais. Une validation du mot de passe permet une
% sortie prématuré de la boucle.
while(nEssai < NB_ESSAI_MAX && estValide == 0)
    % Saisit de l'essai.
    saisi = input('Entrez le mot de passe: ','s');
    
    % Valide le mot de passe.
    if estMotDePasseValide(saisi)
        estValide = true;
    end
    
    nEssai = nEssai + 1;
end

end

function [estBonMotDePasse] = estMotDePasseValide(candidat)
% Valide qu'un candidat est le bon mot de passe.
%
% Args:
%   candidat (char): Le mot candidat à tester.
% Returns:
%   logical: `true` si le candidat est 
%

% Le mot de passe secret!
MOT_DE_PASSE = 'PaSsWord';

% Compare notre candiat au vrai mot de passe.
estBonMotDePasse = strcmp(candidat, MOT_DE_PASSE);

end

