-module(mylists_tests).
-include_lib("eunit/include/eunit.hrl").

sum_empty_list_test() ->
	?assertEqual(0 , mylists:sum([])).

sum_list_of_one_item_returns_item_value_test() ->
	?assertEqual(5, mylists:sum([5])).
