man('���������').
man('������').
man('�����').

color('������').
color('�������').
color('�����').

getcolor(X,Y):- man(X),color(Y), X='���������', not(Y='�������'),not(Y='������').
getcolor(X,Y):-	man(X),color(Y), X='������', not(Y='������'),not(getcolor('���������',Y)).
getcolor(X,Y):-	man(X),color(Y), X='�����', not(Y='�����'),not(getcolor('���������',Y)),not(getcolor('������',Y)).


container('�������').
container('������').
container('������').
container('�����').

liquid('������').
liquid('�������').
liquid('����').
liquid('����').

getcontainer(X,Y):- container(X), liquid(Y), X='�������', not(Y='����'),not(Y='������'),not(getcontainer('�����',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='������', not(Y='������'),not(getcontainer('�������',Y)),not(getcontainer('�����',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='������', not(Y='�������'), not(Y='����'), not(getcontainer('������',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='�����', not(Y='����'), not(Y='�������'), not(Y='������').


