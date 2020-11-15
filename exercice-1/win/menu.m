% Affiche un menu qui demande � l'utilisateur de saisir un nombre qui
% repr�sente le num�ro de l'exercice du programme que celui-ci souhaite
% ex�cuter parmi les diff�rents exercices r�alis�s jusqu'� pr�sent.
% L'affichage du menu prends la forme suivante. La premi�re ligne sera
% "Quel programme souhaitez-vous appeler?" suivi d'un saut de ligne.
% Ensuite, chaque ligne aura la forme de "NUMERO - NOMSCRIPT" suivi d'un
% saut de ligne. Si la valeur entr�e est valide, le script appelle le
% programme demand�. Sinon, le script affiche un message d'erreur indiquant
% que la s�lection est invalide. L'affichage du message d'erreur prends la
% forme "Choix invalide." suivi d'un saut de ligne.
% 
% Example:
%   ::
%
%       >> menu
%       Quel programme souhaitez-vous appeler?
%       1 - alloMonde
%       2 - horaire
%       3 - doubleDuNombre
%       4 - carreDuNombre
%       5 - coutAvecTaxes
%       6 - nomEtPrenom
%       7 - multiplieDeuxNombres
%       8 - positifNegatifNul
%       9 - minimumEntreDeux
%       10 - quadrantCartesien
%       11 - imcPersonne
%       12 - minimumEntreTrois
%       Choix : 1
%
%       Allo monde!
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Affiche le menu. 
% Note : Les points de suspensions ne fonctionne pas habituellement �
% l'int�rieur d'une chaine de caract�res. Il faut utiliser les crochets [ ]
% avec les chaines d�limit�s par des virgules pour avoir une chaine sur
% plusieurs lignes.
fprintf(['Quel programme souhaitez-vous appeler?\n', ...
        '1 - alloMonde\n', ...
        '2 - horaire\n', ...
        '3 - doubleDuNombre\n', ...
        '4 - carreDuNombre\n', ...
        '5 - coutAvecTaxes\n', ...
        '6 - nomEtPrenom\n' , ...
        '7 - multiplieDeuxNombres\n' , ...
        '8 - positifNegatifNul\n' , ...
        '9 - minimumEntreDeux\n' , ...
        '10 - quadrantCartesien\n' , ...
        '11 - imcPersonne\n' , ...
        '12 - minimumEntreTrois\n'] );

% Saisit la s�lection de l'utilisateur.
choixUtilisateur = input('Choix : ');

% Appelle le bon script. Si la s�lection est invalide, affiche un message
% d'erreur.
% Note : L'appel d'un script se fait par son nom sans extension .m
switch choixUtilisateur
    case 1
        alloMonde
    case 2
        horaire
    case 3
        doubleDuNombre
    case 4
        carreDuNombre
    case 5
        coutAvecTaxes
    case 6
        nomEtPrenom
    case 7  
        multiplieDeuxNombres
    case 8
        positifNegatifNul
    case 9
        minimumEntreDeux
    case 10
        quadrantCartesien
    case 11
        imcPersonne
    case 12
        minimumEntreTrois
    otherwise
        fprintf('Choix invalide.\n');
end
