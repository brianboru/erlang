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