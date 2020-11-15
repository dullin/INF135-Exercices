function [nDiviseur] = nDiviseurCommun(nb1, nb2)
if nb1 < nb2
    minimum = nb1;
else
    minimum = nb2;
end

nDiviseur = 1;
for i = 2:minimum
    if mod(nb1, i) == 0 && mod(nb2, i) == 0
        nDiviseur = nDiviseur + 1;
    end
end
end

