forma1(P,DispName,X,Y):- new(P, dialog('Save me')),send(P, display, text(DispName), point(X,Y)), send(P, append, button('Click me',message(P,display, text('Проверка'),point(X+70,Y-23)))), send(P, append, button(quit,message(P,destroy))), send(P, open).



plus(A,B):- C is A+B, format('~w~n',C).
minus(A,B):-C is A-B, format('~w~n',C).
multiply(A,B):-C is A*B, format('~w~n',C).
divide(A,B):-(B is 0, format('На ноль делить нельзя~n'));(C is A, format('~w~n',C)).
sqrtNumber(A):- C is sqrt(A), format('~w~n',C).
degreeNumber(A,B):- C is A**B, format('~w~n',C).
sinNumber(A):- C is sin(A), format('~w~n',C).
cosNumber(A):- C is cos(A), format('~w~n',C).
tanNumber(A):- C is tan(A), format('~w~n',C).
ctgNumber(A):- C is 1/tan(A), format('~w~n',C).
expNumber(A):- C is exp(A), format('~w~n',C).
absNumber(A):- C is abs(A), format('~w~n',C).
lnNumber(A):- C is log(A), format('~w~n',C).
calculator:-free(P), new(P, dialog('Calculator')),
	send(P,append,new(L1,text_item('Введите А',0))),
	send(P,append,new(L2,text_item('Введите B',0))),
	send(L1, type, int),
	send(L2 ,type, int),
	send(P,append,button(plus,message(@prolog,plus,L1?selection,L2?selection))),
	send(P,append,button(minus,message(@prolog,minus,L1?selection,L2?selection))),
	send(P,append,button(multiply,message(@prolog,multiply,L1?selection,L2?selection))),
	send(P,append,button(divide,message(@prolog,divide,L1?selection,L2?selection))),
	send(P,append,button('Sqrt A',message(@prolog,sqrtNumber,L1?selection))),
	send(P,append,button(degree,message(@prolog,degreeNumber,L1?selection,L2?selection))),
	send(P,append,button(sin,message(@prolog,sinNumber,L1?selection))),
	send(P,append,button(cos,message(@prolog,cosNumber,L1?selection))),
	send(P,append,button(tan,message(@prolog,tanNumber,L1?selection))),
	send(P,append,button(ctg,message(@prolog,ctgNumber,L1?selection))),
	send(P,append,button(exp,message(@prolog,expNumber,L1?selection))),
	send(P,append,button(abs,message(@prolog,absNumber,L1?selection))),
	send(P,append,button(ln,message(@prolog,lnNumber,L1?selection))),
	send(P, open).
