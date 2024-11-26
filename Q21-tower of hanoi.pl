hanoi(1, Source, Target, _Auxiliary) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Target), nl.

hanoi(N, Source, Target, Auxiliary) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Target),
    hanoi(1, Source, Target, _),
    hanoi(M, Auxiliary, Target, Source).
output:
 hanoi(3,a,c,b).
Move disk 1 from a to c
Move disk 1 from a to b
Move disk 1 from c to b
Move disk 1 from a to c
Move disk 1 from b to a
Move disk 1 from b to c
Move disk 1 from a to c
true .
