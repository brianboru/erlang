-record(todo, { status=reminder, who=joe, text}).


%
% run rr("<file.hrl>"). to load record into the shell

%
% #todo{}. will create an instance with the default values

%
% #todo{status=urgent}. will create an instance with the status set to urgent

%
% to extract we use pattern matching
% #todo{status=Status} = X. 
% this will extract the value of status into the Status variable
% from the record instance X

%
% records are just "special" tuples
% if we tell the REPL to forget the record information
% then the data just reverts to a tuple
%
% try using:
%	rf(<record name>)
% then look at a variable that was set to the record
% and you should see that all values are there but
% the record structure
%
% REPL Sample:
%
% 27> X1.
% #todo{status = urgent,who = joe,text = "fix book"}
% 28> rf(todo).
% ok
% 29> X1.
% {todo,urgent,joe,"fix book"}
% 30>
% 
