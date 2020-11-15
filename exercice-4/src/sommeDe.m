% Ce script simule un lancer de deux dés à 4 faces et additionne leur résultat.
% Simule ce lancer de dé 10000 fois et compte le nombre d’occurrences de
% chacune des valeurs résultantes possible dans un tableau : 2,3,4,5,6,7,8.
%

% Constantes
NB_TIR_DE = 10000; % Nombre de lancer à faire.
NB_FACE_DE = 4; % Nombre de faces du dé.
% Nombre de valeurs possible avec  la somme deux dés.
NB_VALEURS_POSSIBLES = NB_FACE_DE*2-1;
% Valeurs possibles da la somme de deux dés.
VALEURS_POSSIBLES = 2:NB_FACE_DE*2; 

sommeDes = 0;
% Tableau d'occurences de chacunes des valeurs possible.
vecValeur = zeros(1, NB_VALEURS_POSSIBLES);

% Simule NG_TIR_DE fois.
for i=1:NB_TIR_DE
   % La fonction randi permet de généré des nombres aléatoire.
   de1 = randi(NB_FACE_DE);
   de2 = randi(NB_FACE_DE);
   
   sommeDes = de1 + de2;
   
   % Incrémente dans notre tableau d'occurences en utilisant la somme comme
   % indice du tableau.
   vecValeur(sommeDes-1) = vecValeur(sommeDes-1)+1;
   
end

