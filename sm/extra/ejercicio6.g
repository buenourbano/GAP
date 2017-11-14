x:=Indeterminate(ZmodnZ(2),"x");
modulo:=x^5+x^4+1;
P:=PolynomialRing(ZmodnZ(2),"x");
R:=P/Ideal(P,[modulo]);
unidades:=Elements(Units(R));