-module(records_misc).
-export([clear_status/1, clear_status2/1]).
-include("records.hrl").  	% this includes the record definition in the Erlang header file called records.hrl

%
% pattern matches function parameter
%
clear_status(#todo{status=S, who=W} = R) ->
	% local variable S is bound to status of R by pattern match
	% local variable W is bound to who of R by pattern match
	% R is the entire record
	R#todo{status=cleared}.

%
% uses the "when" constraint to match a particular record type
%
clear_status2(R) when is_record(R, todo) ->
	R#todo{status=when_checked}.
