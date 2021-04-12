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

hexadecimal(0,0).
hexadecimal(1,1).
hexadecimal(2,2).
hexadecimal(3,3).
hexadecimal(4,4).
hexadecimal(5,5).
hexadecimal(6,6).
hexadecimal(7,7).
hexadecimal(8,8).
hexadecimal(9,9).
hexadecimal('A',10).

hexadecimalPredicat(X):-
	hexadecimal(X,Y),
	binaryPredicat(Y).

buildtriangle(X1,Y1,X2,Y2,X3,Y3):-((X1 = X2,Y1 = Y2);(X1 = X3,Y1=Y3);(X2 = X3,Y2=Y3)), write('Нельзя'),!.
buildtriangle(X1,Y1,X2,Y2,X3,Y3):- (Y3-Y1)*(X2-X1) \= (X3-X1)*(Y2-Y1), write('Можно').


