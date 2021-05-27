:-dynamic(citizen/10).
citizen('��������','����','����������','1997-10-02','�','����� 47','0411','175677','�����','���������� ��� ����������').
citizen('����������','���','����������','1999-03-03','�','������������� 28','0413','175687','�������','�������� ���� ����������').
citizen('�������','�������','�������������','1997-11-09','�','������� 1','0411','173456','�����','').
citizen('������','�������','�������������','2000-02-18','�','������ 32','0413','175687','�� �������', '����').


%�
listSurname(X,L):-findall(X,citizen(X,_,_,_,_,_,_,_,_,_),L).
writeCitizen([H|T]):-citizen(H,I,O,B,G,A,SP,NP,S,FIO),write(citizen(H,I,O,B,G,A,SP,NP,S,FIO)),nl,writeCitizen(T).
citizenBySurname(F):-listSurname(F,Y),sort(Y,Z),writeCitizen(Z).


%�
listBirth(X,L):-findall(X,citizen(_,_,_,X,_,_,_,_,_,_),L).
writeOldestCitizen([H|_]):-citizen(F,I,O,H,G,A,SP,NP,S,FIO),write(citizen(F,I,O,H,G,A,SP,NP,S,FIO)).
oldestCitizen(B):-listBirth(B,Y),sort(Y,Z),writeOldestCitizen(Z).


%E
noFamily:-citizen(F,I,O,B,G,A,SP,NP,S,FIO), ((S = '�� �����'; S = '�� �������'),!), write(citizen(F,I,O,B,G,A,SP,NP,S,FIO)).