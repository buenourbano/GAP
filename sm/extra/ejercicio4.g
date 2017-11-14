r:=[1..99];
ternas:=[];
for p in IteratorOfCartesianProduct(r,r) do
    q:=p[1]^2 + p[2]^2;
    if IsInt(q) and q<100 then
        Add(ternas,[p[1],p[2],q]);
    fi;
od;