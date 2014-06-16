-module(my_module).
-export([print/1, either_or_both/2, area/1, area_with_case/1, sign/1, yesno/1, bin_test/1, current_position/0]).

%% simple output to the console window
print(Term) ->
    io:format("This value of Term is: ~p.~n", [Term]).

%% simple function clause with added guard clause to ensure
%% type that parameters are booleans
either_or_both(true, B)when is_boolean(B) ->
    true;
either_or_both(A, true) when is_boolean(A) ->
    true;
either_or_both(false, false) ->
    false.

%% simple function patterns for area calculations
area({circle, Radius}) ->
    Radius * Radius * math:pi();
area({square, Side}) ->
    Side * Side;
area({rectangle, Width, Height}) ->
    Width * Height.

area_with_case(Shape) ->
    case Shape of 
	{circle, Radius} ->
	    Radius * Radius * math:pi();
	{square, Side} ->
	    Side * Side;
	{rectange, Width, Height} ->
	    Width * Height
    end.

%% if expressions
sign(N) when is_number(N) ->
    if 
	N > 0 -> positive;
	N < 0 -> negative;
	true  -> zero
    end.

%% higher order function example
yesno(F) ->
    case F(true, false) of
	true -> io:format("true");
	false -> io:format("false")
    end.


%% BIN test with list comprehensions
bin_test(Bin) ->
    BinList = [{bin, {range, 49210950, 49210959}, { country, "irl"}, {currency, "usd"}}, {bin, {range, 42424200, 42424299}, { country, "usa"}, {currency, "usd"}}],
    [{match, Country, Currency} || {bin, {range, Low, High}, {country, Country}, {currency, Currency}} <- BinList, Bin >= Low, Bin =< High].

%% macros example
current_position()->
    [{module, ?MODULE}, {file, ?FILE}, {line, ?LINE}].
		 
	       
		    

	       
	     
	     
	

    




