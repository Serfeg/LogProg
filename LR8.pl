tree(X):-X = tr(2, tr(7, nil, nil), tr(3, tr(4, nil, nil), tr(1, nil, nil))).

tree_del_min(tr(X,nil,R),R,X).
tree_del_min(tr(K,L,R),tr(K,L1,R),X):-tree_del_min(L,L1,X).
tree_del(X,tr(X,nil,R),R):-!.
tree_del(X,tr(X,L,nil),L):-!.
tree_del(X,tr(X,L,R),tr(Y,L,R1)):-tree_del_min(R,R1,Y).
tree_del(X,tr(K,L,R),tr(K,L1,R)):- X<K,!,tree_del(X,L,L1).
tree_del(X,tr(K,L,R),tr(K,L1,R)):- X>K,tree_del(X,L,L1).
tree_del1(K,L):-tree(X),tree_del(K,X,L),!.

tree_length(nil,0).
tree_length(tr(_,nil,nil),1):-!.
tree_length(tr(_,L,R),N):-tree_length(L,N1),tree_length(R,N2), N is N1+N2.
tree_length1(N):-tree(X),tree_length(X,N).

tree_lengthP(nil,0,_).
tree_lengthP(tr(X,L,R),N,P):-C is X mod P,C = 0,tree_lengthP(L,N1,P),tree_lengthP(R,N2,P), N is N1+N2.
tree_lengthP(tr(X,L,R),N,P):-C is X mod P, C \= 0, tree_lengthP(L,N1,P),tree_lengthP(R,N2,P), N is N1+N2+1.
tree_length1P(N,P):-tree(X),tree_lengthP(X,N,P).


