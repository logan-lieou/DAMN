% example of a rule
nearby(X, Y) :- X = Y.
nearby(X, Y) :- X is Y+1.
nearby(X, Y) :- X is Y-1.
