librecuadrados:=function(x)
    local q,i,factores;
    q:=x;
    factores:=FactorsInt(q);
    if(Length(factores)=Length(Set(factores))) then
        return "Este entero está libre de cuadrados.";
    else
        return "Este entero no está libre de cuadrados.";
    fi;
end;