-module(natural_order).
-export([map/2]).

%
% entry point method
map(L, Map) ->
	map(L, Map, []). 	% accumulator is empty list to start with

%
% private implementation
map([H|T], Map, Result) ->
	H1 = Map(H),				% run the mapping function
	map(T, Map, [H1 | Result]);	% put new value on head of result list
map([], Map, Result) -> lists:reverse(Result).	% once all items are processed return 
												% result list reversed to restore input order