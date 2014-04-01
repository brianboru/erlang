-module(geometry1).
-include_lib("eunit/include/eunit.hrl").

-export([area/1]).

area({rectangle, Width, Height}) -> calculate_rectangle(Width, Height);
area({square, Side}) -> calculate_square(Side).

calculate_rectangle(Width, Height) -> Width * Height.
calculate_square(Side) -> Side * Side.

calculate_rectangle_test_() -> 
	[
		?_assert(calculate_rectangle(10,2) =:= 20),
		?_assert(calculate_rectangle(10,10) =:= 100),
		?_assert(calculate_rectangle(2,10) =:= 20),
		?_assert(calculate_rectangle(0,0) =:= 0)
	].
calculate_square_test() -> 
	[
		?_assert(calculate_square(5) =:= 25)
	].