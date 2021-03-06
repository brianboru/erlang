-module(guards).
-export([max/2, guard_series/2, guard_seq/2, guard_true/1]).


% 
% simple guard example
max(X,Y) when X > Y -> X;
max(X,Y) -> Y.

%
% guard sequence vs guard (series of guard expressions)
% guard sequence is a single or series of guards separated by semi-colons (result is true if one is true)
% guard is a series of guard expressions separated by commas (result is true if all are true)


%
% guard sequence - only one need to evaluate to true
guard_seq(X,Y) when is_integer(X); Y < 6 -> "X is a number or Y is less than 6";
guard_seq(X,Y) -> "other side".

% 
% guard sample
% all must be true
guard_series(X,Y) when is_integer(X), X > Y, Y < 6 -> "X is a number, is bigger than Y and Y is less than 6";
guard_series(X,Y) -> "other side".

% 
% true guard sample
% true can act as a catch all at the end of a series of guard clauses
guard_true(X) ->
	if 
		X > 6 -> "Greater than 6";
		X > 0, X < 6 -> "Less than 6";
		true -> "some other value"
	end.