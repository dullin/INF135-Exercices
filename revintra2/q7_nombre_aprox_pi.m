function  q7_nombre_aprox_pi(  )
    NB_TERMES = 10000;
    somme = 0;
    
    for i=0:NB_TERMES
        somme = somme + (-3)^-i/(2*i+1);
    end
    
    fprintf('Pi vaut environ %f\n', sqrt(12)*somme);
end

