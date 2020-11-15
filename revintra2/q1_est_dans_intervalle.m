function [ retour ] = q1_est_dans_intervalle( valeur, min ,max )
    retour = valeur < max && valeur > min;
end

