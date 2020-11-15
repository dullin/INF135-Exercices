saisie = input('Entrez une valeur : ');

while saisie > 0
    fprintf('%g\n', mod(saisie, 10));
    saisie = fix(saisie / 10);
end
