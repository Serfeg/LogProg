man('���������').
man('������').
man('�����').

color('������').
color('�������').
color('�����').

getcolor(X,Y):- man(X),color(Y), X='���������', not(Y='�������'),not(Y='������').
getcolor(X,Y):-	man(X),color(Y), X='������', not(Y='������'),not(getcolor('���������',Y)).
getcolor(X,Y):-	man(X),color(Y), X='�����', not(Y='�����'),not(getcolor('���������',Y)),not(getcolor('������',Y)).

