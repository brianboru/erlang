-module(exercises).
-export([my_time_func/1]).

my_time_func(F) ->
	Start = now(),
	End = now(),
	End - Start.