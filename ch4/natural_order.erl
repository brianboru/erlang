-module(natural_order).
-export([map/3]).

map([H|T], Map, Result) ->
	H1 = Map(H),
	map(T, Map, [H1 | Result]);
map([], Map, Result) -> Result.