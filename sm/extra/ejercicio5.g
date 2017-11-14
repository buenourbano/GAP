sumacuadrados:=function(n)
    return First(Cartesian([1..RootInt(n)],[1..RootInt(n)]), p->p[1]^2+p[2]^2=n)<>fail;
end;