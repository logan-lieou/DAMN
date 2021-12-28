prime(N) :-
	pascal([1, [N|XS]),
	append(XS, [1], Rest),
	forall(member(X, XS), 0 is X mod N).

main :-
	prime(7).
