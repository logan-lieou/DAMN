argument(In, OutFile) :-
	open(OutFile, write, OutStream),
	((csv_read_file_row(In, Row, [line(line)]),
			addrow(Row, Out),
			csv_write_stream(OutStream, [Out], []),
			fail)
		; close(OutStream)).

addrow(Term, NewTerm) :-
	Term =.. [F | List],
	List = [X|_],
	(integer(X) -> sum_list(List, Sum) ; Sum = 'SUM'),
		append(List, [Sum], NewList),
		NewTerm =.. [F | NewList].

test :- argument('data.csv', 'test.csv').
