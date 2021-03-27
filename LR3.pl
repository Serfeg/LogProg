man('Белокуров').
man('Чернов').
man('Рыжов').

color('Брюнет').
color('Блондин').
color('Рыжий').

getcolor(X,Y):- man(X),color(Y), X='Белокуров', not(Y='Блондин'),not(Y='Брюнет').
getcolor(X,Y):-	man(X),color(Y), X='Чернов', not(Y='Брюнет'),not(getcolor('Белокуров',Y)).
getcolor(X,Y):-	man(X),color(Y), X='Рыжов', not(Y='Рыжий'),not(getcolor('Белокуров',Y)),not(getcolor('Чернов',Y)).

