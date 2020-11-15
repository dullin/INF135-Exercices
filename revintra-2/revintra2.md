---
pandocomatic:
  pandoc:
    from: markdown
    to: pdf
  metadata:
    geometry: 'margin=1in'
---

# INF135 - Révision Intra 2
## Instructions
* Complétez chaque exercice du document à l’aide des notions vues en classe. 
* Complétez chaque exercice dans le temps alloué. 
* Faites les exercices sur papier pour vous pratiquer à l'environnement de l'examen.

# Question
Écrivez une fonction qui reçoit en paramètre deux chaines de caractères.  La première chaine sera la chaine à vérifier et la deuxième chaine est une liste de lettre à trouver dans la première. La fonction retourne un tableau du nombre d’occurrences de chaque lettre de la deuxième chaine se retrouvant dans la première.

# Solution
```MATLAB
function [tabOccurences] = nOccurences(chaine,tabChar)
tabOccurences = zeros(1,numel(tabChar));
for i= 1:numel(tabChar)
  tabOccurences(i) = numel(strfind(chaine, tabChar(i)));
end
end
```

# Question
Écrivez une fonction qui compte le nombre de consonnes dans une phrase. Notons qu’une consonne est une lettre qui n’est pas une voyelle.

# Solution
```MATLAB
function [n] = nConsonnes(phrase)
    n = 0;
    phrase = upper(phrase);
    for compteur = 1 :numel(phrase)
        thisCaractere = phrase(compteur);
        
        if (thisCaractere >= 'A' && ...
              thisCaractere <= 'Z' && ...
              ~estVoyelle(thisCaractere))
          n = n + 1;
        end
    end
end

function [voyelle] = estVoyelle(lettre)
    lettre = upper(lettre);
    voyelle = (lettre == 'A' || lettre == 'E' || ...
                    lettre == 'I' || lettre == 'O' || ...
                    lettre == 'U' || lettre == 'Y');
end
```

# Question
Écrivez une fonction qui reçoit un tableau de deux dimensions, un indice de ligne et un indice de colonne. La fonction calcule la moyenne locale de la case donnée. La moyenne locale est la moyenne des valeurs des cases adjacentes à celle-ci.

# Solution
```MATLAB
function [moy] = moyenneLocale(tab,initLigne, ...
    initColonne)
moy = 0;
nCases = 0;
for ligne = initLigne-1:initLigne+1
    for colonne = initColonne-1:initColonne+1
        if ligne >= 1 && ligne <= size(tab,1) && ...
                colonne >= 1 && colonne <= size(tab,2)
            nCases = nCases + 1;
            moy = moy + tab(ligne,colonne);
        end
    end
end
moy = moy / nCases;
end
```

# Question
Écrivez une fonction qui reçoit un tableau de deux dimensions. La fonction retourne un tableau de deux dimensions avec la moyenne locale de chaque case.

# Solution
```MATLAB
function [matEmbrouiller] = embrouillerImage( tab )
matEmbrouiller = zeros(size(tab, 1),size(tab, 2));
for ligne = 1:size(tab,1)
    for colonne = 1:size(tab,2)
        matEmbrouiller(ligne,colonne) = ... 
            moyenneLocale(tab, ligne, colonne);
    end
end
end
```

# Question
Écrire une fonction qui reçoit deux paramètres : une chaine de caractères contenant plusieurs mots délimités par des espaces et une lettre à trouver dans les mots de la première chaine. La fonction retourne le nombre de mots contenant la lettre à trouver dans la liste de mots de la première chaine.

# Solution
```MATLAB
function [nMot] = nMotsAvecLettre(chaine, lettre)
nMot = 0;
while ~isempty(chaine)
    [tok, chaine] = strtok(chaine);
    % Version longue numel(strfind(tok, lettre)) > 1
    % Version rapide : le if est faux si l'expression est vide
    if strfind(tok,lettre)
        nMot = nMot + 1;
    end
end
end
```

# Question
Écrivez une fonction qui reçoit un tableau d’enregistrement contenant une liste de positions. Chaque enregistrement contient un champ x et y qui indique une position. La fonction détruit les cases qui contiennent une position ou le x et le y ont la même valeur. La fonction retourne la liste d’enregistrement avec les cases détruite.

# Solution
```MATLAB
function [listePos] = coupeMemePosition(listePos)
for i = numel(listePos):-1:1
    if listePos(i).x == listePos(i).y
        listePos(i) = []
    end
end
end
```

# Question
Écrivez une fonction qui reçoit le nom d'un fichier texte. Le fichier contient une série de position x et y. Le fichier contient une position par ligne de la manière suivante : "x: 34 y: 21.4". La fonction retourne un tableau d'enregistrement avec les champs x et y de chaque position lu dans le fichier.

Exemple d'un fichier texte à lire:
```
x:5 y: 3
x:3 y: -32
x:56 y: 35
x:53.4 y: 3
```

# Solution
```MATLAB
function [listePos] = lirePos(nomFichier)
fid = fopen(nomFichier);
assert(fid ~= -1)

listePos = [];

while ~feof(fid)
    vecPos = fscanf(fid, 'x: %g y: %g\n', 2);
    pos.x = vecPos(1);
    pos.y = vecPos(2);
    listePos = [listePos pos];
end

fclose(fid)
end
```