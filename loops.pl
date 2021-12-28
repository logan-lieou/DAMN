% you can only write loops with recursion
countFrom(Lower, Upper) :- Lower = Upper, writeln(Lower), !.
countFrom(Lower, Upper) :- Lower \= Upper, writeln(Lower), NextValue is Lower+1, countFrom(NextValue, Upper).
