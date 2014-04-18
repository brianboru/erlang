-module(records_misc).
-export([clear_status/1]).
-include("records.hrl").  	% this includes the record definition in the Erlang header file called records.hrl

clear_status(#todo{status=S, who=W} = R) ->
	% local variable S is bound to status of R by pattern match
	% local variable W is bound to who of R by pattern match
	% R is the entire record
	R#todo{status=cleared}.
