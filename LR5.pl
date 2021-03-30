maxPredicat(X1,X2,X3,X4):- (X1 > X2, X1 > X3, X1 > X4),write(X1).
maxPredicat(X1,X2,X3,X4):- (X2 > X1, X2 > X3, X2 > X4),write(X2).
maxPredicat(X1,X2,X3,X4):- (X3 > X1, X3 > X2, X3 > X4),write(X3).
maxPredicat(X1,X2,X3,X4):- (X4 > X1, X4 > X2, X4 > X3),write(X4).

pointPredicat(X,Y,XCent,YCent,Rad):- Rad^2 >= (X-XCent)^2 + (Y-YCent)^2,write('Yes').

gipotenysaPredicat(A,B,C):- C is sqrt((A^2)+(B^2)),write(C).

binaryPredicat(0):- !.
binaryPredicat(X):-
	C is X mod 2,
	X1 is X div 2,
	binaryPredicat(X1),
	write(C).

hexadecimalPredicat(X):-
	X1 is X,
	binaryPredicat(X1).


