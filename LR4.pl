write_list([H|T]):-write(H),nl,write_list(T).


length1([],0).
length1([_|T],K):- length(T,K1), K is K1+1.


member(X,[X|_]).
member(X,[_|T]):-member(X,T).


conc([],L,L).
conc([H|T],L,[H|T1]):- conc(T,L,T1).


last([X],X).
last([_|T],X):-last(T,X).
last2(L,X):- conc(_,[X],L).


neighbors(X,Y,L):-conc(_,[X,Y|_],L);conc(_,[Y,X|_],L).


man('Иван').
man('Саша').
man('Егор').


del_neg([],[]).
del_neg([H|T],PTail):- H < 0,!,del_neg(T,PTail).
del_neg([H|T],[H|PTail]):- del_neg(T,PTail).


sumlist([],0,0).
sumlist([H|T],Sum,N):- sumlist(T,Sum1,N1),
	Sum is Sum1+H,
	N is N1+1.


sumlist2([],S,S).
sumlist2([H|T],S2,S):- S1 is H+S2,
	sumlist2(T,S1,S).


quant_4(L,N):- quant_4(L, [], N).
quant_4([],_,0).
quant_4([H|T], S, N) :- not(member(H, S)),not(member(H,T)), quant_4(T, [H|S], N1), N is N1+1.


add_lists([], _, []) :- !.
add_lists(_, [], []).
add_lists([H1|T1], [H2|T2], [H|T]) :-
    H is H1 + H2,
    add_lists(T1, T2, T).

delete_element2(_,[],[]):-!.
delete_element2(X,[H|T],PTail):- H = X,!,delete_element2(X,T,PTail).
delete_element2(X,[H|T],[H|PTail]):- delete_element2(X,T,PTail).









