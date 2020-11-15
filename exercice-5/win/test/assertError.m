function assertError(fcnHandle)
% G�n�re une erreur si l'appel de la fonction ne g�n�re par d'erreur.
%
% Args:
%   fcnHandle (function_handle): L'appel de la fonction qui est suppos�
%       g�n�r� une erreur. Doit avoir la forme `@()nomFonction(param)`.
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

% L'appel n'ayant pas fait d'erreur. G�n�re une erreur.
strFcn = func2str(fcnHandle);
strFcn(1:3) = []; % Coupe le @()
error([strFcn ' did not throw error.'])

end
