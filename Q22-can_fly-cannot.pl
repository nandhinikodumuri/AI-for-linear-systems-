can_fly(pigeon).
can_fly(sparrow).
can_fly(eagle).
can_fly(owl).
can_fly(swallow).
can_fly(hawk).
cannot_fly(penguin).
cannot_fly(ostrich).
cannot_fly(kiwi).
can_bird_fly(Bird) :- can_fly(Bird), write(Bird), write(' can fly.'), nl.
can_bird_fly(Bird) :- cannot_fly(Bird), write(Bird), write(' cannot fly.'), nl.
output:
can_fly(Bird).
Bird = pigeon ;
Bird = sparrow ;
Bird = eagle ;
Bird = owl ;
Bird = swallow ;
Bird = hawk.

?- cannot_fly(Bird).
Bird = penguin ;
Bird = ostrich ;
Bird = kiwi.
