-module(lib_misc).
-export([for/3, qsort/1, perms/1]).

%
% Erlang for loop implementation
for(Max, Max, F) -> [ F(Max) ];
for(I, Max, F) -> [F(I) | for(I+1, Max, F)].


% 
% quick sort alogrithm
qsort([]) -> [];
qsort([Pivot | T]) ->  					% split list into head and rest of list
	qsort([X || X <- T, X < Pivot]) 	% put all items less than pivot into new list, sort it and concat it to the left of pivot
	++ [Pivot] ++						% next have pivot
	qsort([X || X <- T, X >= Pivot]).	% put all items greater than pivot into list, sort it and concat it to the right of pivot

%
% anagrams - permutations sample
% page 63
% this makes my head hurt
perms([]) -> [[]];						% okay so perms of empty is empty - that bit is fine
perms(L) -> [ [H|T] || H <- L, T <- perms(L--[H])].	% so the [H|T] || H <- L bit generates a list with each item so "123" -> ["1", "2", "3"]
													% T will be perms of remaining list without the first number i.e.
													% "123" => ["1"] + perms["23"] 	=> "23" => ["2"] + perms["3"]
													%										=> ["3"] + perms["2"]
													%		=> ["2"] + perms["13"]
													%		=> ["3"] + perms["12"]