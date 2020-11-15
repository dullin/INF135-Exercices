function [ tab2d, chaine ] = q4_lireBinaire( nomFichier )
fid = fopen(nomFichier);
assert(fid~=-1);
nb_lignes = fread(fid, 1, 'uint8');
nb_colonnes = fread(fid, 1, 'uint8');
tab2d = [];

for colonne=1:nb_colonnes
    for ligne=1:nb_lignes
        tab2d(ligne,colonne) = fread(fid, 1, 'double');
    end
end
%Version rapide
chaine = fread(fid, 'char');
chaine = chaine';
%Vesrion longue
chaine = '';
while ~feof(fid)
    chaine = [chaine fread(fid, 1 ,'char')];
end
fclose(fid);
end

