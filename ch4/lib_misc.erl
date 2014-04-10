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
	qsort([X || X <- T, X < Pivot]) 	% put all items less than pivot into new list and sort that, pre-pend it to pivot
	++ [Pivot] ++						% next have pivot
	qsort([X || X <- T, X >= Pivot]).	% put all items

%
% anagrams - permutations sample
% page 63
perms([]) -> [[]];
perms(L) -> [ [H|T] || H <- L, T <- perms(L--[H])].
