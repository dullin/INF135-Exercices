NB_TERMES = 1000;
somme = 0;

for i = 0:NB_TERMES-1
    somme = somme + (-3)^-i / (2 * i + 1);
end

fprintf('Approximation de pi : %g\n', sqrt(12)*somme);
