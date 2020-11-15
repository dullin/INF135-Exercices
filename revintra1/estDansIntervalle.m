function [valide] = estDansIntervalle(nombre, min ,max)
assert(isnumeric(nombre) && isnumeric(min) ...
    && isnumeric(max))
valide = nombre < max && nombre > min;
end

