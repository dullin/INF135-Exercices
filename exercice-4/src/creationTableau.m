% Création de tableaux.
% Écrivez un script qui contient les tableaux suivants et assignez les dans les 
% variables suivantes:
%
% * tab1 : tableau d'une ligne de 20 éléments avec les nombres de 1 à 20.
% * tab2 : tableau d'une ligne de 20 éléments avec les nombres de 21 à 40.
% * tab3 : tableau d'une colonne de 20 éléments avec les nombres de 21 à 40.
% * tab4 : tableau vide (utilisez []) et remplissez-le, un nombre à la fois,
%   avec les nombres de 21 à 40, à l’aide de l’opérateur de concaténation. **Indice** : `tab = [tab 12]`
% * tab5_1, tab5_2, tab5_3 : Deux tableaux d'une ligne. Le premier doit contenir les nombres de 40 à 21 et le second de 20 à 1. Concaténez-les pour obtenir un troisième tableau qui contient les nombres de 40 à 1.
% * tab6 : Refaire le tab4 avec un tableau d'une colonne.  **Indice** : `tab = [tab; 12]`
% * tab7_1, tab7_2, tab7_3 : Refaire le tab5 avec des tableaux d'une colonne. 
%
%

% Exercice 1
tab1 = 1:20;

% Exercice 2
tab2 = 21:40;

% Exercice 3
tab3 = zeros(20,1);
for i=1:20
    tab3(i) = 20+i;
end

% Exercice 4
tab4 = [];
for i=1:20
    tab4 = [tab4 20+i];
end

% Exercice 5
tab5_1 = 40:-1:21;
tab5_2 = 20:-1:1;
tab5_3 = [tab5_1 tab5_2];

% Exercice 6
tab6 = [];
for i=1:20
    tab6 = [tab6;20+i];
end

% Exercice 7
tab7_1 = zeros(20,1);
tab7_2 = zeros(20,1);
for i=1:20
    tab7_1(i) = 41-i;
    tab7_2(i) = 21-i;
end
tab_7_3 = [tab7_1;tab7_2];