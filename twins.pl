%first family
family(person(mike, norton, date(13, octomber, 1973), works(chef, 7000)),
person(jane, norton, date(12, may, 1977), unemployed),
[person(nick, norton, date(22, august, 1997), unemployed),
person(bill, norton, date(18, january, 2001), unemployed)]).

%second family
family(person(george, smith, date(1, january, 1965), works(hotel, 5600)),
person(helen, smith, date(23, november, 1971), works(hnm, 3100)),
[person(jessica, smith, date(22, may, 1993), unemployed),
person(jack, smith, date(16, march, 1996), works(police, 4000)),
person(anthony, smith, date(9, may, 1998), works(guitarist, 3400))]).

%third family
family(person(conor, mcgregor, date(6, july, 1952), works(politician, 8000)),
person(nancy, mcgregor, date(23, december, 1959), works(secretary, 5800)),
[person(paul, mcgregor, date(7, june, 1990), works(lawyer, 6100)),
person(emilia, mcgregor, date(7, june, 1990), works(actress, 7000))]).

%fourth family
family(person(nick, jones, date(2, march, 1968), works(teacher, 4150)),
person(mary, jones, date(5, march, 1970), unemployed),
[person(edward, jones, date(8, august, 1989), works(boxer, 10000)),
person(joanna, jones, date(27, octomber, 1995), unemployed),
person(riley, jones, date(17, november, 1999), unemployed),
person(liza, jones, date(17, november, 1999), unemployed)]).

%ignore father and mother with underscore
%check with member if the child is member of the family
child(X):-
  family(_, _, Children),
  member(X, Children).

%put each kid to a variable and check if they have same
%date of birth and surname
twins(Child1,Child2) :-
    child(Child1),child(Child2),
    Child1=person(Fname1,Sname1,D1,_),
    Child2=person(Fname2,Sname2,D2,_),
    Fname1@<Fname2,
    Sname1=Sname2,
    D1=D2.