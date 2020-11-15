function q5_ecrireTexte( tab2d, chaine, nomFichier )
fid = fopen(nomFichier, 'w');
assert(fid~=-1);
fprintf(fid, 'La chaine de caractere ecrit est : \n%s\n',chaine);
fprintf(fid, 'Le tableau de deux dimensions ecrit est :\n');
for ligne=1:size(tab2d,1)
    for colonne=1:size(tab2d,2)
        fprintf(fid,'%g',tab2d(ligne,colonne));
        if colonne ~= size(tab2d,2)
            fprintf(fid,' - ');
        else
            fprintf(fid,'\n');
        end
    end
end
fclose(fid);
end

