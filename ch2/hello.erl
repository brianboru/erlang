-module(hello).
-export([start/0]).

start() ->
	io:format("Hello World~n").

% compile in the erlang shell:
%	c(<module-name>).

% to compile to a beam outside of the REPL
%	erlc <filename>
%
% to run
%	erl -noshell -s hello start -s init stop
% 	erl -noshell -s	<module-name> <function-name>

% the erl -noshell command loads the mofule and evaluates the 
% function. 
% after this it evaluates function stop within the init module which
% terminates the erlang session