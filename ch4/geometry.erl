-module(geometry).
-export([area/1]).

area({rectangle, Width, Height}) -> calculate_rectangle(Width, Height);
area({square, Side}) -> calculate_square(Side).

calculate_rectangle(Width, Height) -> Width * Height.
calculate_square(Side) -> Side * Side.