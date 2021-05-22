:-dynamic(citizen/10).
citizen('��������','����','����������','02.10.1997','�','����� 47','0411','175677','�����','���������� ��� ����������').
citizen('����������','���','����������','03.03.1999','�','������������� 28','0413','175687','�������','�������� ���� ����������').
citizen('�������','�������','�������������','09.11.1997','�','������� 1','0411','173456','�����','').
citizen('������','�������','�������������','18.02.2000','�','������ 32','0413','175687','�� �������', '����').


%�
list(X,L):-findall(X,citizen(X,_,_,_,_,_,_,_,_,_),L).
writeCitizen([H|T]):-citizen(H,I,O,B,G,A,SP,NP,S,FIO),write(citizen(H,I,O,B,G,A,SP,NP,S,FIO)),nl,writeCitizen(T).
citizenBySurname(F):-list(F,Y),sort(Y,Z),writeCitizen(Z).

get_year(Year):- get_time(X),format_time(atom(Today), '%Y', X),atom_number(Today, Year).
