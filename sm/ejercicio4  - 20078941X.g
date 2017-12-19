#Definimos el anillo R
x:=Indeterminate(ZmodnZ(2),"x");
modulo:=x^5+x^4+1;
P:=PolynomialRing(ZmodnZ(2),"x");
R:=P/Ideal(P,[modulo]);

#Definimos la aplicación
U:=R;
V:=R;
f:=LeftModuleGeneralMappingByImages(U,V,Basis(U),List(Basis(U),x->x^2-x));

#Calculamos su núcleo
S:=Kernel(f);
SS:=Elements(Basis(S));

#Mostramos por pantalla la base del núcleo

Print("La base del núcleo de la aplicación x -> x^2 - x definida de R = ZmodnZ(2)[x]/x^5+x^4+1 a R es ", SS);