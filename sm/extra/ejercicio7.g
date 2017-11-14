V:=Rationals^3;
W:=Rationals^2;
f:=LeftModuleGeneralMappingByImages(V,W,Basis(V),List(Basis(V),x->[x[1]+x[2],x[1]-x[3]]));
S:=Kernel(f);
SS:=Elements(Basis(S));