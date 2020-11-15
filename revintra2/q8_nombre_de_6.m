function [ nb_6 ] = q8_nombre_de_6( nb_des )
    nb_6 = 0;
    
    for i=1:nb_des
        if(randi(6) == 6)
            nb_6=nb_6 + 1;
        end
    end
end

