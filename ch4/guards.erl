-module(guards).
-export([max/2, guard_series/2]).


% 
% simple guard example
max(X,Y) when X > Y -> X;
max(X,Y) -> Y.

%
% guard sequence vs guard (series of guard expressions)
% guard sequence is a single or series of guards separated by semi-colons (result is true if one is true)
% guard is a series of guard expressions separated by commas (result is true if all are true)


% 
% guard sample
% all must be true
guard_series(X,Y) when is_integer(X), X > Y, Y < 6 -> "X is a number, is bigger than Y and Y is less than 6";
guard_series(X,Y) -> "other side".
