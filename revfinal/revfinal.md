---
pandocomatic:
  pandoc:
    from: markdown
    to: pdf
  metadata:
    geometry: 'margin=1in'
---

# INF135 - Révision Final
## Instructions
* Complétez chaque exercice du document à l’aide des notions vues en classe. 
* Complétez chaque exercice dans le temps alloué. 
* Faites les exercices sur papier pour vous pratiquer à l'environnement de l'examen.

# Question
Implémenter la fonction `strfind` de MATLAB. La fonction reçoit deux chaines de caractères. La première est la chaine à chercher et la deuxième est la chaine à trouver dans la première. La fonction retourne un tableau d'indice ou la deuxième chaine a été trouvée dans la première.

**Restriction** : Aucune fonction qui travaille sur les chaines de caractères n'est permise. Une exception est permise pour  l'utilisation de la fonction `strcmp`.

# Solution
```MATLAB
function [iFind] = trouverMot(chaine, mot)
iFind = [];

for i = 1:numel(chaine) - numel(mot) + 1
    
    if strcmp(chaine(i:i + numel(mot) - 1), mot)
        iFind = [iFind i];
    end
end
end
```

# Question
```MATLAB
classedef Experience
    properties
        nom
        listeValeur % Vecteur des valeurs de l'expérience
    end
end
```

Écrivez une fonction qui reçoit une liste d'objet de type `Experience`. La fonction va écrire un fichier texte qui avec les comportements suivants:

* Pour chaque expérience :
    * Une première ligne va avoir le nom de l'expérience sur la ligne;
    * La ligne subséquente va contenir les valeurs des l'expérience délimitée par une virgule;
* Chaque expérience sera écrite une à la suite de l'autre dans le fichier texte.
* Le **nom du fichier texte** sera le nombre d'expérience suivi de l'extension `.txt`.

# Solution
```MATLAB
function ecrireExperience(listeExperience)

nomFichier = [num2str(numel(listeExperience)), '.txt'];
fid = fopen(nomFichier, 'w');
assert(fid ~= -1)

for i = 1:numel(listeExperience)
    exp = listeExperience(i)
    fprintf(fid, '%s\n', exp.nom)
    for j = 1:numel(exp.listeValeur)
        fprintf(fid, '%g', exp.listeValeur(j))
        if j ~= numel(exp.listeValeur)
            fprintf(fid, ', ')
        else
            fprintf('\n')
        end
    end
end

fclose(fid)
end
```

# Question
```MATLAB
classdef Flotte
  properties
    listeTech = Tech.empty
    listeCamion = Camion.empty
  end
end

classdef Camion
  properties
    outils = Outils.empty
    libre = true
    numId = 12345
  end
end

classdef Tech
   properties
    nom = 'Bob'
    outils = Outils.empty
    numId = 12345
  end
end

classdef Outils   
  properties
    tournevis = 5;
    perceuse = true
    echelle = true
  end
end
```

Écrivez une fonction qui reçoit une flotte. La fonction retourne un tableau des numéros d’identification des camions libres (libre == true) dans la flotte.

Écrivez une fonction qui reçoit en paramètre une flotte. La fonction retourne le nombre de tournevis dans la flotte (pour tous les techniciens et tous les camions).

# Solution
```MATLAB
function [listeId] = camionLibres(flotte)
listeId = [];
for i = 1:numel(flotte.listeCamion)
    if flotte.listeCamion(i).libre
        listeId = [listeId flotte.listeCamion(i).numId];
    end
end
end
```

```MATLAB
function [nTournevis] = nbTournevis(flotte)
nTournevis = 0;
for i = 1:numel(flotte.listeCamion)
    nTournevis = nTournevis + flotte.listeCamion(i).outils.tournevis;
end
for i = 1:numel(flotte.listeTech)
    nTournevis = nTournevis + flotte.listeTech(i).outils.tournevis;
end
end
```

# Question
Écrivez la définition de la classe VaisseauSpatial qui représente un vaisseau spatial d'un jeu d’exploration selon la définition suivante.

**Propriétés (lecture seule)**

* nom - Nom du vaisseau spatial.
* carburantMax - Le nombre d’unités de carburant maximal du vaisseau.

**Propriétés (privée)**

* carburant - Le nombre d’unités de carburant courant du vaisseau.

**Méthodes**

* VaisseauSpatial - Le constructeur de la classe. Cette méthode reçoit deux paramètres : le nom du vaisseau et le nombre de carburants maximum. La méthode initialise les propriétés. Le carburant courant est assigné au maximum possible du vaisseau.
* estBasEnCarburant - Retourne une valeur logique qui indique si le vaisseau est bas en carburant. Le vaisseau est bas en carburant si le carburant est plus bas que 10% de sa capacité maximale.
* rencontrerTrouNoir - Reçois un nombre entier représentant la classe du trou noir. Déduit des unités de carburant au vaisseau pour passer à côté du trou noir. Le nombre d’unités est déterminé aléatoirement entre 1 et 10 multipliés par la classe du trou noir.

Écrivez ensuite un script qui créez un vaisseau spatial avec le nom Enterprise et 500 unités de carburant maximum. Faites rencontrer des trous noirs au vaisseau tant que le vaisseau n’est pas bas en carburant. Les classes des trous noirs sont générées aléatoirement entre 1 et 5. Le script se termine en affichant le nom du vaisseau, le nombre de trous noirs rencontrés et le nombre de carburants maximum du vaisseau.

Voici un exemple de l’affichage final :
```
Le vaisseau Enterprise est passé à travers 26 trous noirs avec 500 unités de carburants.
```

# Solution
```MATLAB
classdef VaisseauSpatial < handle
    properties (SetAccess = private)
        nom
        carburantMax
    end
    
    properties (Access = private)
        carburant
    end
    
    methods
        function obj = VaisseauSpatial(nom, carburanMax)
            obj.carburantMax = carburanMax;
            obj.carburant = obj.carburantMax;
            obj.nom = nom;
        end
        
        function estBas = estBasEnCarburant(obj)
            estBas = obj.carburant < obj.carburantMax / 10;
        end
        
        function rencontrerTrouNoir(obj, classe)
            obj.carburant = obj.carburant - randi(10) * classe;
        end
    end
end
```

```MATLAB
v1 = VaisseauSpatial('Enterprise', 500);

nTrousNoirs = 0;

while ~v1.estBasEnCarburant
    v1.rencontrerTrouNoir(randi(5))
    nTrousNoirs = nTrousNoirs + 1;
end

fprintf('Le vaisseau %s est passÃ© Ã  travers %g trous noirs avec %g unitÃ©s de carburants.\n', ...
    v1.nom, nTrousNoirs, v1.carburantMax)
```