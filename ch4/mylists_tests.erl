-module(mylists_tests).
-include_lib("eunit/include/eunit.hrl").

% This module uses eunit to perform some basic tests against
% our lists module
%
% This demonstrates how to seperate tests into new module
% with eunit
%
% To run tests simply execute the following command:
%	eunit:test(mylists)
%
% EUnit automatically looks for a test method within
% modules with name of mylists or mylists_tests
%
sum_empty_list_test() ->
	?assertEqual(0 , mylists:sum([])).

sum_list_of_one_item_returns_item_value_test() ->
	?assertEqual(5, mylists:sum([5])).
