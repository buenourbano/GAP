#Esta función nos muestra por pantalla la pareja de números amigos generada por el método de Thabit ibn Qurrá
#En caso de no generarla nos muestra un mensaje por pantalla

tiq := function(n)
    local p,q;
    p:=[3*2^(n-1)-1,3*2^(n)-1,9*2^(2*n-1)-1];
    if IsPrime(p[1]) and IsPrime(p[2]) and IsPrime(p[3]) then
        q:=[2^(n)*p[1]*p[2],2^(n)*p[3]];
        return q;
    fi;
    return "El natural introducido no genera una pareja de números amigos por el método de Thabit ibn Qurrá.";
end;
