function afficheDiviseur(nombre)
for i = 1:nombre
    if mod(nombre, i) == 0
        fprintf('%g\n', i);
    end
end
end
