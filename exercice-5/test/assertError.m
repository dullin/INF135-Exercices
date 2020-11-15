function assertError(fcnHandle)
% Génère une erreur si l'appel de la fonction ne génère par d'erreur.
%
% Args:
%   fcnHandle (function_handle): L'appel de la fonction qui est supposé
%       généré une erreur. Doit avoir la forme `@()nomFonction(param)`.
% Example:
%   ::
%
%       >> assertError(@()sin('allo'))
%

try
    % L'appel de la fonction.
    feval(fcnHandle);
catch
    return
end

% L'appel n'ayant pas fait d'erreur. Génère une erreur.
strFcn = func2str(fcnHandle);
strFcn(1:3) = []; % Coupe le @()
error([strFcn ' did not throw error.'])

end
