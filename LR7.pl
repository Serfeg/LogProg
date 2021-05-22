:-dynamic(citizen/10).
citizen('Маркушин','Егор','Михайлович','02.10.1997','М','Щорса 47','0411','175677','Женат','Янцевичуте Яна Алексеевна').
citizen('Янцевичуте','Яна','Алексеевна','03.03.1999','Ж','Краснодарская 28','0413','175687','Замужем','Маркушин Егор Михайлович').
citizen('Макаров','Алексей','Александрович','09.11.1997','М','Пушкина 1','0411','173456','Женат','').
citizen('Бенько','Надежда','Владиславовна','18.02.2000','Ж','Ленина 32','0413','175687','Не замужем', 'Нету').


%а
list(X,L):-findall(X,citizen(X,_,_,_,_,_,_,_,_,_),L).
writeCitizen([H|T]):-citizen(H,I,O,B,G,A,SP,NP,S,FIO),write(citizen(H,I,O,B,G,A,SP,NP,S,FIO)),nl,writeCitizen(T).
citizenBySurname(F):-list(F,Y),sort(Y,Z),writeCitizen(Z).

get_year(Year):- get_time(X),format_time(atom(Today), '%Y', X),atom_number(Today, Year).
