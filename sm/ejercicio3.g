nuggets := function(N,T,P)
    local numero, precios, cantidades, combinaciones, minimo, precio_actual, indice;

    numero := N;
    precios := P;
    cantidades := T;
    minimo := Maximum(precios)*Maximum(cantidades)*numero;
    precio_actual := 0;
    indice := 1;
    combinaciones := RestrictedPartitions(numero,cantidades);

    #Filtramos el caso en elque el usuario se equivoque y en el que no haya combinaciones posibles

    if Length(precios)<>Length(cantidades) then
        
        Print("No has dado la misma cantidad de tipos de precios que de tipos de cajas de nuggets.");
    
    elif combinaciones = [] then

        Print("No existe manera de comprar ", numero," nuggets con la combinación de nuggets por caja dada.");
    
    else


        for i in [1..Length(combinaciones)] do 

            for j in [1..Length(precios)] do
                precio_actual := precio_actual + Length(Filtered(combinaciones[i], x -> x=cantidades[j])) * precios[j];
            od;

            if precio_actual < minimo then
                minimo := precio_actual;
                indice := i;
            fi;

            precio_actual := 0;

        od;

        Print("La mejor manera de comprar ", numero," nuggets con la combinación de nuggets por caja dada es ", combinaciones[indice], " y te costaría ", minimo," euros.");

    fi;

end;
