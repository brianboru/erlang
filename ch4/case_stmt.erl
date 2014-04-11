-module(case_stmt).
-export([filter/2]).

%
% filter function that uses case to eliminate non matching items
filter(P, [H|T]) ->
	case P(H) of 
		true -> [H | filter(P, T)];
		false -> filter(P,T)
	end;
filter(P, []) -> [].