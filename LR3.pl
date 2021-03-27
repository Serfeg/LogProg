man('Белокуров').
man('Чернов').
man('Рыжов').

color('Брюнет').
color('Блондин').
color('Рыжий').

getcolor(X,Y):- man(X),color(Y), X='Белокуров', not(Y='Блондин'),not(Y='Брюнет').
getcolor(X,Y):-	man(X),color(Y), X='Чернов', not(Y='Брюнет'),not(getcolor('Белокуров',Y)).
getcolor(X,Y):-	man(X),color(Y), X='Рыжов', not(Y='Рыжий'),not(getcolor('Белокуров',Y)),not(getcolor('Чернов',Y)).


container('Бутылка').
container('Стакан').
container('Кувшин').
container('Банка').

liquid('Молоко').
liquid('Лимонад').
liquid('Квас').
liquid('Вода').

getcontainer(X,Y):- container(X), liquid(Y), X='Бутылка', not(Y='Вода'),not(Y='Молоко'),not(getcontainer('Банка',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='Стакан', not(Y='Молоко'),not(getcontainer('Бутылка',Y)),not(getcontainer('Банка',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='Кувшин', not(Y='Лимонад'), not(Y='Квас'), not(getcontainer('Стакан',Y)).
getcontainer(X,Y):- container(X), liquid(Y), X='Банка', not(Y='Вода'), not(Y='Лимонад'), not(Y='Молоко').


