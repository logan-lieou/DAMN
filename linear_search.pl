linear_search([H|XS], T, X) :- 
	H \= T, linear_search(XS, T, X+1).
