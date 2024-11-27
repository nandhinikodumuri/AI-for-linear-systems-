%connected(+Start, +Goal, -Weight)
connected(1,7,1).
connected(1,8,1).
connected(1,3,1).
connected(7,4,1).
connected(7,20,1).
connected(7,17,1).
connected(8,6,1).
connected(3,9,1).
connected(3,12,1).
connected(9,19,1).
connected(4,42,1).
connected(20,28,1).
connected(17,10,1).

connected2(X,Y,D) :- connected(X,Y,D).
connected2(X,Y,D) :- connected(Y,X,D).

next_node(Current, Next, Path) :-
    connected2(Current, Next, _),
    not(member(Next, Path)).
output:
connected(1,Next,Weigth).
Next = 7,
Weigth = 1 ;
Next = 8,
Weigth = 1 ;
Next = 3,
Weigth = 1.

?- connected2(7,Next,Weight).
Next = 4,
Weight = 1 ;
Next = 20,
Weight = 1 ;
Next = 17,
Weight = 1 ;
Next = Weight, Weight = 1.

?- next_node(1,Next,weight).
Next = 7 ;
Next = 8 ;
Next = 3 ;
